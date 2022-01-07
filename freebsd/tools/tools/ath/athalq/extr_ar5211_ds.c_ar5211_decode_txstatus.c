
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int tstamp_usec; int tstamp_sec; int threadid; } ;
struct if_ath_alq_payload {TYPE_1__ hdr; int payload; } ;
struct ar5211_desc {int ds_status1; int ds_status0; } ;


 int AR_AckSigStrength ;
 int AR_Done ;
 int AR_ExcessiveRetries ;
 int AR_FIFOUnderrun ;
 int AR_Filtered ;
 int AR_FrmXmitOK ;
 int AR_LongRetryCnt ;
 int AR_SendTimestamp ;
 int AR_SeqNum ;
 int AR_ShortRetryCnt ;
 int AR_VirtCollCnt ;
 int MF (int ,int ) ;
 int MS (int ,int ) ;
 scalar_t__ be32toh (int ) ;
 scalar_t__ be64toh (int ) ;
 int memcpy (struct ar5211_desc*,int *,int) ;
 int printf (char*,...) ;

__attribute__((used)) static void
ar5211_decode_txstatus(struct if_ath_alq_payload *a)
{
 struct ar5211_desc txs;


 memcpy(&txs, &a->payload, sizeof(struct ar5211_desc));

 printf("[%u.%06u] [%llu] TXSTATUS\n",
     (unsigned int) be32toh(a->hdr.tstamp_sec),
     (unsigned int) be32toh(a->hdr.tstamp_usec),
     (unsigned long long) be64toh(a->hdr.threadid));


 printf("    Frmok=%d, xretries=%d, fifounderrun=%d, filt=%d\n",
     MF(txs.ds_status0, AR_FrmXmitOK),
     MF(txs.ds_status0, AR_ExcessiveRetries),
     MF(txs.ds_status0, AR_FIFOUnderrun),
     MF(txs.ds_status0, AR_Filtered));
 printf("    LongRetryCnt=%d, ShortRetryCnt=%d, VCollCnt=%d\n",
     MS(txs.ds_status0, AR_LongRetryCnt),
     MS(txs.ds_status0, AR_ShortRetryCnt),
     MS(txs.ds_status0, AR_VirtCollCnt));
 printf("    SndTimestamp=0x%04x\n",
     MS(txs.ds_status0, AR_SendTimestamp));


 printf("    Done=%d, SeqNum=0x%04x, AckRSSI=%d\n",
     MF(txs.ds_status1, AR_Done),
     MS(txs.ds_status1, AR_SeqNum),
     MS(txs.ds_status1, AR_AckSigStrength));

 printf("\n ------\n");
}
