
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_2__ {int tstamp; int threadid; } ;
struct if_ath_alq_payload {TYPE_1__ hdr; int payload; } ;
struct ar5416_desc {int ds_rxstatus8; int ds_rxstatus2; int ds_link; int ds_data; int ds_ctl0; int ds_ctl1; int ds_rxstatus0; int ds_rxstatus1; int ds_rxstatus3; int ds_rxstatus4; int ds_rxstatus5; int ds_rxstatus6; int ds_rxstatus7; } ;


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
 static uint64_t rx_tsf = 0;


 memcpy(&rxs, &a->payload, sizeof(struct ar5416_desc));

 if (MF(rxs.ds_rxstatus8, AR_RxDone) == 0)
  return;

 printf("[%u] [%llu] RXSTATUS: RxDone=%d, TS=0x%08x (delta %d)\n",
     (unsigned int) be32toh(a->hdr.tstamp),
     (unsigned long long) be64toh(a->hdr.threadid),
     MF(rxs.ds_rxstatus8, AR_RxDone),
     rxs.ds_rxstatus2,
     rxs.ds_rxstatus2 - rx_tsf);

 rx_tsf = rxs.ds_rxstatus2;
}
