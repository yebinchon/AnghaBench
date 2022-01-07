
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int tstamp_usec; int tstamp_sec; int threadid; } ;
struct if_ath_alq_payload {TYPE_1__ hdr; int payload; } ;
struct ar5416_desc {int ds_rxstatus8; int ds_rxstatus0; int ds_rxstatus2; int ds_link; int ds_data; int ds_ctl0; int ds_ctl1; int ds_rxstatus4; int ds_rxstatus1; int ds_rxstatus3; int ds_rxstatus5; int ds_rxstatus6; int ds_rxstatus7; } ;


 int AR_2040 ;
 int AR_CRCErr ;
 int AR_DataLen ;
 int AR_DecryptCRCErr ;
 int AR_DupFrame ;
 int AR_GI ;
 int AR_HiRxChain ;
 int AR_KeyIdx ;
 int AR_KeyMiss ;
 int AR_MichaelErr ;
 int AR_NumDelim ;
 int AR_PHYErr ;
 int AR_PHYErrCode ;
 int AR_PostDelimCRCErr ;
 int AR_PreDelimCRCErr ;
 int AR_RxAggr ;
 int AR_RxAntenna ;
 int AR_RxDone ;
 int AR_RxFrameOK ;
 int AR_RxKeyIdxValid ;
 int AR_RxMore ;
 int AR_RxMoreAggr ;
 int AR_RxRSSIAnt00 ;
 int AR_RxRSSIAnt01 ;
 int AR_RxRSSIAnt02 ;
 int AR_RxRSSIAnt10 ;
 int AR_RxRSSIAnt11 ;
 int AR_RxRSSIAnt12 ;
 int AR_RxRSSICombined ;
 int AR_RxRate ;
 int MF (int,int ) ;
 int MS (int,int ) ;
 scalar_t__ be32toh (int ) ;
 scalar_t__ be64toh (int ) ;
 int memcpy (struct ar5416_desc*,int *,int) ;
 int printf (char*,...) ;

__attribute__((used)) static void
ar5416_decode_rxstatus(struct if_ath_alq_payload *a)
{
 struct ar5416_desc rxs;


 memcpy(&rxs, &a->payload, sizeof(struct ar5416_desc));

 printf("[%u.%06u] [%llu] RXSTATUS: RxDone=%d, RxRate=0x%02x, TS=0x%08x\n",
     (unsigned int) be32toh(a->hdr.tstamp_sec),
     (unsigned int) be32toh(a->hdr.tstamp_usec),
     (unsigned long long) be64toh(a->hdr.threadid),
     MF(rxs.ds_rxstatus8, AR_RxDone),
     MS(rxs.ds_rxstatus0, AR_RxRate),
     rxs.ds_rxstatus2);

 printf("  link=0x%08x, data=0x%08x, ctl0=0x%08x, ctl2=0x%08x\n",
     rxs.ds_link,
     rxs.ds_data,
     rxs.ds_ctl0,
     rxs.ds_ctl1);






 printf("  RSSICtl[0]=%d, RSSICtl[1]=%d, RSSICtl[2]=%d\n",
     MS(rxs.ds_rxstatus0, AR_RxRSSIAnt00),
     MS(rxs.ds_rxstatus0, AR_RxRSSIAnt01),
     MS(rxs.ds_rxstatus0, AR_RxRSSIAnt02));


 printf("  RSSIExt[0]=%d, RSSIExt[1]=%d, RSSIExt[2]=%d, RSSIComb=%d\n",
     MS(rxs.ds_rxstatus4, AR_RxRSSIAnt10),
     MS(rxs.ds_rxstatus4, AR_RxRSSIAnt11),
     MS(rxs.ds_rxstatus4, AR_RxRSSIAnt12),
     MS(rxs.ds_rxstatus4, AR_RxRSSICombined));


 printf("  RxTimestamp=0x%08x,", rxs.ds_rxstatus2);


 printf(" DataLen=%d, RxMore=%d, NumDelim=%d\n",
     rxs.ds_rxstatus1 & AR_DataLen,
     MF(rxs.ds_rxstatus1, AR_RxMore),
     MS(rxs.ds_rxstatus1, AR_NumDelim));


 printf("  GI=%d, 2040=%d, RxRate=0x%02x, DupFrame=%d, RxAnt=0x%08x\n",
     MF(rxs.ds_rxstatus3, AR_GI),
     MF(rxs.ds_rxstatus3, AR_2040),
     MS(rxs.ds_rxstatus0, AR_RxRate),
     MF(rxs.ds_rxstatus3, AR_DupFrame),
     MS(rxs.ds_rxstatus3, AR_RxAntenna));




 printf("  RxEvm0=0x%08x, RxEvm1=0x%08x, RxEvm2=0x%08x\n",
     rxs.ds_rxstatus5,
     rxs.ds_rxstatus6,
     rxs.ds_rxstatus7);


 printf("  RxDone=%d, RxFrameOk=%d, CrcErr=%d, DecryptCrcErr=%d\n",
     MF(rxs.ds_rxstatus8, AR_RxDone),
     MF(rxs.ds_rxstatus8, AR_RxFrameOK),
     MF(rxs.ds_rxstatus8, AR_CRCErr),
     MF(rxs.ds_rxstatus8, AR_DecryptCRCErr));
 printf("  PhyErr=%d, MichaelErr=%d, PreDelimCRCErr=%d, KeyIdxValid=%d\n",
     MF(rxs.ds_rxstatus8, AR_PHYErr),
     MF(rxs.ds_rxstatus8, AR_MichaelErr),
     MF(rxs.ds_rxstatus8, AR_PreDelimCRCErr),
     MF(rxs.ds_rxstatus8, AR_RxKeyIdxValid));

 printf("  RxMoreAggr=%d, RxAggr=%d, PostDelimCRCErr=%d, HiRxChain=%d\n",
     MF(rxs.ds_rxstatus8, AR_RxMoreAggr),
     MF(rxs.ds_rxstatus8, AR_RxAggr),
     MF(rxs.ds_rxstatus8, AR_PostDelimCRCErr),
     MF(rxs.ds_rxstatus8, AR_HiRxChain));


 if (MF(rxs.ds_rxstatus8, AR_PHYErr))
  printf("  PhyErrCode=0x%02x",
      MS(rxs.ds_rxstatus8, AR_PHYErrCode));
 else
  printf("  KeyIdx=0x%02x",
      MS(rxs.ds_rxstatus8, AR_KeyIdx));
 printf(", KeyMiss=%d\n",
     MF(rxs.ds_rxstatus8, AR_KeyMiss));

 printf("\n ------\n");
}
