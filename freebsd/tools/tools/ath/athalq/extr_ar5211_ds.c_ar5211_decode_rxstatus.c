
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int tstamp_usec; int tstamp_sec; int threadid; } ;
struct if_ath_alq_payload {TYPE_1__ hdr; int payload; } ;
struct ar5211_desc {int ds_link; int ds_data; int ds_status0; int ds_status1; } ;


 int AR_CRCErr ;
 int AR_DataLen ;
 int AR_DecryptCRCErr ;
 int AR_Done ;
 int AR_FrmRcvOK ;
 int AR_KeyCacheMiss ;
 int AR_KeyIdxValid ;
 int AR_More ;
 int AR_PHYErr ;
 int AR_RcvAntenna ;
 int AR_RcvSigStrength ;
 int AR_RcvTimestamp ;
 int MF (int,int ) ;
 int MS (int,int ) ;
 scalar_t__ be32toh (int ) ;
 scalar_t__ be64toh (int ) ;
 int memcpy (struct ar5211_desc*,int *,int) ;
 int printf (char*,...) ;

__attribute__((used)) static void
ar5211_decode_rxstatus(struct if_ath_alq_payload *a)
{
 struct ar5211_desc rxs;


 memcpy(&rxs, &a->payload, sizeof(struct ar5211_desc));

 printf("[%u.%06u] [%llu] RXSTATUS\n",
     (unsigned int) be32toh(a->hdr.tstamp_sec),
     (unsigned int) be32toh(a->hdr.tstamp_usec),
     (unsigned long long) be64toh(a->hdr.threadid));

 printf("  link=0x%08x, data=0x%08x\n",
     rxs.ds_link,
     rxs.ds_data);


 printf("  DataLen=%d, ArMore=%d, RSSI=%d, RcvAntenna=0x%x\n",
     rxs.ds_status0 & AR_DataLen,
     MF(rxs.ds_status0, AR_More),
     MS(rxs.ds_status0, AR_RcvSigStrength),
     MS(rxs.ds_status0, AR_RcvAntenna));


 printf("  RxDone=%d, RxFrameOk=%d, CrcErr=%d, DecryptCrcErr=%d\n",
     MF(rxs.ds_status1, AR_Done),
     MF(rxs.ds_status1, AR_FrmRcvOK),
     MF(rxs.ds_status1, AR_CRCErr),
     MF(rxs.ds_status1, AR_DecryptCRCErr));
 printf("  KeyIdxValid=%d\n",
     MF(rxs.ds_status1, AR_KeyIdxValid));

 printf("  PhyErrCode=0x%02x\n",
     MS(rxs.ds_status1, AR_PHYErr));

 printf("  KeyMiss=%d\n",
     MF(rxs.ds_status1, AR_KeyCacheMiss));

 printf("  Timetamp: 0x%05x\n",
     MS(rxs.ds_status1, AR_RcvTimestamp));

 printf("\n ------\n");
}
