
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int tstamp_usec; int tstamp_sec; int threadid; } ;
struct if_ath_alq_payload {TYPE_1__ hdr; int payload; } ;
struct ar5212_desc {int ds_rxstatus1; int ds_link; int ds_data; int ds_ctl0; int ds_ctl1; int ds_rxstatus0; } ;


 int AR_CRCErr ;
 int AR_DataLen ;
 int AR_DecompCRCErr ;
 int AR_DecryptCRCErr ;
 int AR_Done ;
 int AR_FrmRcvOK ;
 int AR_KeyCacheMiss ;
 int AR_KeyIdx ;
 int AR_KeyIdxValid ;
 int AR_MichaelErr ;
 int AR_More ;
 int AR_PHYErr ;
 int AR_PHYErrCode ;
 int AR_RcvAntenna ;
 int AR_RcvRate ;
 int AR_RcvSigStrength ;
 int AR_RcvTimestamp ;
 int MF (int,int ) ;
 int MS (int,int ) ;
 scalar_t__ be32toh (int ) ;
 scalar_t__ be64toh (int ) ;
 int memcpy (struct ar5212_desc*,int *,int) ;
 int printf (char*,...) ;

__attribute__((used)) static void
ar5212_decode_rxstatus(struct if_ath_alq_payload *a)
{
 struct ar5212_desc rxs;


 memcpy(&rxs, &a->payload, sizeof(struct ar5212_desc));

 printf("[%u.%06u] [%llu] RXSTATUS: RxOK=%d TS=0x%08x\n",
     (unsigned int) be32toh(a->hdr.tstamp_sec),
     (unsigned int) be32toh(a->hdr.tstamp_usec),
     (unsigned long long) be64toh(a->hdr.threadid),
     MF(rxs.ds_rxstatus1, AR_Done),
     MS(rxs.ds_rxstatus1, AR_RcvTimestamp));

 printf("  link=0x%08x, data=0x%08x, ctl0=0x%08x, ctl2=0x%08x\n",
     rxs.ds_link,
     rxs.ds_data,
     rxs.ds_ctl0,
     rxs.ds_ctl1);


 printf("  DataLen=%d, ArMore=%d, DecompCrcError=%d, RcvRate=0x%02x\n",
     rxs.ds_rxstatus0 & AR_DataLen,
     MF(rxs.ds_rxstatus0, AR_More),
     MF(rxs.ds_rxstatus0, AR_DecompCRCErr),
     MS(rxs.ds_rxstatus0, AR_RcvRate));
 printf("  RSSI=%d, RcvAntenna=0x%x\n",
     MS(rxs.ds_rxstatus0, AR_RcvSigStrength),
     MS(rxs.ds_rxstatus0, AR_RcvAntenna));


 printf("  RxDone=%d, RxFrameOk=%d, CrcErr=%d, DecryptCrcErr=%d\n",
     MF(rxs.ds_rxstatus1, AR_Done),
     MF(rxs.ds_rxstatus1, AR_FrmRcvOK),
     MF(rxs.ds_rxstatus1, AR_CRCErr),
     MF(rxs.ds_rxstatus1, AR_DecryptCRCErr));
 printf("  PhyErr=%d, MichaelErr=%d, KeyIdxValid=%d\n",
     MF(rxs.ds_rxstatus1, AR_PHYErr),
     MF(rxs.ds_rxstatus1, AR_MichaelErr),
     MF(rxs.ds_rxstatus1, AR_KeyIdxValid));


 if (MF(rxs.ds_rxstatus1, AR_PHYErr))
  printf("  PhyErrCode=0x%02x\n",
      MS(rxs.ds_rxstatus1, AR_PHYErrCode));
 else
  printf("  KeyIdx=0x%02x\n",
      MS(rxs.ds_rxstatus1, AR_KeyIdx));

 printf("  KeyMiss=%d\n",
     MF(rxs.ds_rxstatus1, AR_KeyCacheMiss));

 printf("  Timetamp: 0x%05x\n",
     MS(rxs.ds_rxstatus1, AR_RcvTimestamp));

 printf("\n ------\n");
}
