
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_4__ {int tstamp; int threadid; } ;
struct if_ath_alq_payload {TYPE_1__ hdr; int payload; } ;
struct TYPE_6__ {int* status; } ;
struct TYPE_5__ {TYPE_3__ tx; } ;
struct ar5416_desc {TYPE_2__ u; } ;


 int AR_DataFailCnt ;
 int AR_DescCfgErr ;
 int AR_ExcessiveRetries ;
 int AR_FIFOUnderrun ;
 int AR_Filtered ;
 int AR_FinalTxIdx ;
 int AR_FrmXmitOK ;
 int AR_PowerMgmt ;
 int AR_RTSFailCnt ;
 int AR_SeqNum ;
 int AR_TxBaStatus ;
 int AR_TxDataUnderrun ;
 int AR_TxDelimUnderrun ;
 int AR_TxDone ;
 int AR_TxOpExceeded ;
 int AR_TxRSSIAnt00 ;
 int AR_TxRSSIAnt01 ;
 int AR_TxRSSIAnt02 ;
 int AR_TxRSSIAnt10 ;
 int AR_TxRSSIAnt11 ;
 int AR_TxRSSIAnt12 ;
 int AR_TxRSSICombined ;
 int AR_TxTid ;
 int AR_TxTimerExpired ;
 int AR_VirtRetryCnt ;
 int MF (int,int ) ;
 int MS (int,int ) ;
 scalar_t__ be32toh (int ) ;
 scalar_t__ be64toh (int ) ;
 int memcpy (struct ar5416_desc*,int *,int) ;
 int printf (char*,...) ;

__attribute__((used)) static void
ar5416_decode_txstatus(struct if_ath_alq_payload *a)
{
 struct ar5416_desc txs;
 static uint64_t tx_tsf = 0;


 memcpy(&txs, &a->payload, sizeof(struct ar5416_desc));

 if (MF(txs.u.tx.status[9], AR_TxDone) == 0)
  return;

 printf("[%u] [%llu] TXSTATUS: TxDone=%d, TS=0x%08x (delta %d)\n",
     (unsigned int) be32toh(a->hdr.tstamp),
     (unsigned long long) be64toh(a->hdr.threadid),
     MF(txs.u.tx.status[9], AR_TxDone),
     txs.u.tx.status[2],
     txs.u.tx.status[2] - tx_tsf);

 tx_tsf = txs.u.tx.status[2];
}
