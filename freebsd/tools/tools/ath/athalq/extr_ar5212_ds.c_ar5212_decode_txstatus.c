
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int tstamp_usec; int tstamp_sec; int threadid; } ;
struct if_ath_alq_payload {TYPE_1__ hdr; int payload; } ;
struct TYPE_5__ {int status1; int status0; } ;
struct TYPE_6__ {TYPE_2__ tx; } ;
struct ar5212_desc {TYPE_3__ u; } ;


 int AR_AckSigStrength ;
 int AR_CompSuccess ;
 int AR_DataFailCnt ;
 int AR_Done ;
 int AR_ExcessiveRetries ;
 int AR_FIFOUnderrun ;
 int AR_Filtered ;
 int AR_FinalTSIndex ;
 int AR_FrmXmitOK ;
 int AR_RTSFailCnt ;
 int AR_SendTimestamp ;
 int AR_SeqNum ;
 int AR_VirtCollCnt ;
 int AR_XmitAtenna ;
 int MF (int ,int ) ;
 int MS (int ,int ) ;
 scalar_t__ be32toh (int ) ;
 scalar_t__ be64toh (int ) ;
 int memcpy (struct ar5212_desc*,int *,int) ;
 int printf (char*,...) ;

__attribute__((used)) static void
ar5212_decode_txstatus(struct if_ath_alq_payload *a)
{
 struct ar5212_desc txs;


 memcpy(&txs, &a->payload, sizeof(struct ar5212_desc));

 printf("[%u.%06u] [%llu] TXSTATUS: TxDone=%d, TS=0x%08x\n\n",
     (unsigned int) be32toh(a->hdr.tstamp_sec),
     (unsigned int) be32toh(a->hdr.tstamp_usec),
     (unsigned long long) be64toh(a->hdr.threadid),
     MF(txs.u.tx.status1, AR_Done),
     MS(txs.u.tx.status0, AR_SendTimestamp));


 printf("    Frmok=%d, xretries=%d, fifounderrun=%d, filt=%d\n",
     MF(txs.u.tx.status0, AR_FrmXmitOK),
     MF(txs.u.tx.status0, AR_ExcessiveRetries),
     MF(txs.u.tx.status0, AR_FIFOUnderrun),
     MF(txs.u.tx.status0, AR_Filtered));
 printf("    RTScnt=%d, FailCnt=%d, VCollCnt=%d\n",
     MS(txs.u.tx.status0, AR_RTSFailCnt),
     MS(txs.u.tx.status0, AR_DataFailCnt),
     MS(txs.u.tx.status0, AR_VirtCollCnt));
 printf("    SndTimestamp=0x%04x\n",
     MS(txs.u.tx.status0, AR_SendTimestamp));


 printf("    Done=%d, SeqNum=0x%04x, AckRSSI=%d, FinalTSI=%d\n",
     MF(txs.u.tx.status1, AR_Done),
     MS(txs.u.tx.status1, AR_SeqNum),
     MS(txs.u.tx.status1, AR_AckSigStrength),
     MS(txs.u.tx.status1, AR_FinalTSIndex));
 printf("    CompSuccess=%d, XmitAntenna=%d\n",
     MF(txs.u.tx.status1, AR_CompSuccess),
     MF(txs.u.tx.status1, AR_XmitAtenna));

 printf("\n ------\n");
}
