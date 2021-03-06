function [AllFeats] = ReturnFeatures(AllFeats, Feats2out , MorphVect, SUVpeak, StatsVect, HistVect, IVHvect, ...
        GLCM2D_KSKD,  GLCM2D_KSMD,  GLCM2D_MSKD,  GLCM2D_MSMD,  GLCM3D_Avg,  GLCM3D_Cmb, ...
        GLRLM2D_KSKD, GLRLM2D_KSMD, GLRLM2D_MSKD, GLRLM2D_MSMD, GLRLM3D_Avg, GLRLM3D_Cmb, ...
        GLSZM2D, GLSZM25D, GLSZM3D, GLDZM2D, GLDZM25D, GLDZM3D, ...
        NGTDM2D, NGTDM25D, NGTDM3D, NGLDM2D, NGLDM25D, NGLDM3D, ...
        MI_feats)
% This function returns a predetermined set of calculated features

if Feats2out == 1               % All IBSI features 
    AllFeats = cat(2,AllFeats , ...
        [MorphVect; SUVpeak; StatsVect; HistVect; IVHvect; ...
        GLCM2D_KSKD;  GLCM2D_KSMD;  GLCM2D_MSKD;  GLCM2D_MSMD;  GLCM3D_Avg;  GLCM3D_Cmb; ...
        GLRLM2D_KSKD; GLRLM2D_KSMD; GLRLM2D_MSKD; GLRLM2D_MSMD; GLRLM3D_Avg; GLRLM3D_Cmb; ...
        GLSZM2D; GLSZM25D; GLSZM3D; GLDZM2D; GLDZM25D; GLDZM3D; ...
        NGTDM2D; NGTDM25D; NGTDM3D; NGLDM2D; NGLDM25D; NGLDM3D; ...
        ]);
    
elseif Feats2out == 2           % 1st-order features + all 3D features
    AllFeats = cat(2,AllFeats , ...
        [MorphVect; SUVpeak; StatsVect; HistVect; IVHvect; ...
        GLCM3D_Avg;  GLCM3D_Cmb; ...
        GLRLM3D_Avg; GLRLM3D_Cmb; ...
        GLSZM3D; GLDZM3D; ...
        NGTDM3D; NGLDM3D; ...
        ]);
    
elseif Feats2out == 3           % 1st-order features + all 2D features
    AllFeats = cat(2,AllFeats , ...
        [MorphVect; SUVpeak; StatsVect; HistVect; IVHvect; ...
        GLCM2D_KSKD; GLCM2D_KSMD; GLCM2D_MSKD; GLCM2D_MSMD; ...
        GLRLM2D_KSKD; GLRLM2D_KSMD; GLRLM2D_MSKD; GLRLM2D_MSMD; ...
        GLSZM2D; GLSZM25D; GLDZM2D; GLDZM25D; ...
        NGTDM2D; NGTDM25D; NGLDM2D; NGLDM25D; ...
        ]);
    
elseif Feats2out == 4           % 1st-order features + selected 2D features + all 3D features
    AllFeats = cat(2,AllFeats , ...
        [MorphVect; SUVpeak; StatsVect; HistVect; IVHvect; ...
        GLCM2D_KSKD; GLCM2D_KSMD; GLCM3D_Avg;  GLCM3D_Cmb; ...
        GLRLM2D_KSKD; GLRLM2D_KSMD; GLRLM3D_Avg; GLRLM3D_Cmb; ...
        GLSZM2D; GLSZM3D; GLDZM2D; GLDZM3D; ...
        NGTDM2D; NGTDM3D; NGLDM2D; NGLDM3D; ...
        ]);
    
elseif Feats2out == 5           % All IBSI features + Moment Invariant
    AllFeats = cat(2,AllFeats , ...
        [MorphVect; SUVpeak; StatsVect; HistVect; IVHvect; ...
        GLCM2D_KSKD;  GLCM2D_KSMD;  GLCM2D_MSKD;  GLCM2D_MSMD;  GLCM3D_Avg;  GLCM3D_Cmb; ...
        GLRLM2D_KSKD; GLRLM2D_KSMD; GLRLM2D_MSKD; GLRLM2D_MSMD; GLRLM3D_Avg; GLRLM3D_Cmb; ...
        GLSZM2D; GLSZM25D; GLSZM3D; GLDZM2D; GLDZM25D; GLDZM3D; ...
        NGTDM2D; NGTDM25D; NGTDM3D; NGLDM2D; NGLDM25D; NGLDM3D; ...
        MI_feats]);
    
elseif Feats2out == 6           % All IBSI features + Moment Invariant
    AllFeats = cat(2,AllFeats , ...
        [MorphVect; HistVect; IVHvect; ...
        GLCM3D_Avg;  GLCM3D_Cmb; ...
        GLRLM3D_Avg; GLRLM3D_Cmb; ...
        GLSZM3D; GLDZM3D; ...
        NGTDM3D; NGLDM3D; ...
        ]);
else
    error('Not a valid option to return calculated features. "Feats2out" should be between 1 to 5');  
end