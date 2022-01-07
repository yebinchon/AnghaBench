
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int tstamp_usec; int tstamp_sec; int threadid; } ;
struct if_ath_alq_payload {TYPE_1__ hdr; int payload; } ;
struct TYPE_5__ {int* status; } ;
struct TYPE_6__ {TYPE_2__ tx; } ;
struct ar5416_desc {TYPE_3__ u; } ;


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


 memcpy(&txs, &a->payload, sizeof(struct ar5416_desc));

 printf("[%u.%06u] [%llu] TXSTATUS: TxDone=%d, FrmOk=%d, filt=%d, TS=0x%08x\n",
     (unsigned int) be32toh(a->hdr.tstamp_sec),
     (unsigned int) be32toh(a->hdr.tstamp_usec),
     (unsigned long long) be64toh(a->hdr.threadid),
     MF(txs.u.tx.status[9], AR_TxDone),
     MF(txs.u.tx.status[1], AR_FrmXmitOK),
     MF(txs.u.tx.status[1], AR_Filtered),
     txs.u.tx.status[2]);


 printf("    RX RSSI 0 [%d %d %d]",
     MS(txs.u.tx.status[0], AR_TxRSSIAnt00),
     MS(txs.u.tx.status[0], AR_TxRSSIAnt01),
     MS(txs.u.tx.status[0], AR_TxRSSIAnt02));


 printf(" RX RSSI 1 [%d %d %d] Comb=%d\n",
     MS(txs.u.tx.status[5], AR_TxRSSIAnt10),
     MS(txs.u.tx.status[5], AR_TxRSSIAnt11),
     MS(txs.u.tx.status[5], AR_TxRSSIAnt12),
     MS(txs.u.tx.status[5], AR_TxRSSICombined));


 printf("    BA Valid=%d",
     MF(txs.u.tx.status[0], AR_TxBaStatus));


 printf(", Frmok=%d, xretries=%d, fifounderrun=%d, filt=%d\n",
     MF(txs.u.tx.status[1], AR_FrmXmitOK),
     MF(txs.u.tx.status[1], AR_ExcessiveRetries),
     MF(txs.u.tx.status[1], AR_FIFOUnderrun),
     MF(txs.u.tx.status[1], AR_Filtered));
 printf("    DelimUnderrun=%d, DataUnderun=%d, DescCfgErr=%d,"
     " TxTimerExceeded=%d\n",
     MF(txs.u.tx.status[1], AR_TxDelimUnderrun),
     MF(txs.u.tx.status[1], AR_TxDataUnderrun),
     MF(txs.u.tx.status[1], AR_DescCfgErr),
     MF(txs.u.tx.status[1], AR_TxTimerExpired));

 printf("    RTScnt=%d, FailCnt=%d, VRetryCnt=%d\n",
     MS(txs.u.tx.status[1], AR_RTSFailCnt),
     MS(txs.u.tx.status[1], AR_DataFailCnt),
     MS(txs.u.tx.status[1], AR_VirtRetryCnt));


 printf("    TxTimestamp=0x%08x", txs.u.tx.status[2]);



 printf(", BALow=0x%08x", txs.u.tx.status[3]);
 printf(", BAHigh=0x%08x\n", txs.u.tx.status[4]);





 printf("    TxEVM[0]=0x%08x, TxEVM[1]=0x%08x, TxEVM[2]=0x%08x\n",
     txs.u.tx.status[6],
     txs.u.tx.status[7],
     txs.u.tx.status[8]);


 printf("    TxDone=%d, SeqNum=0x%04x, TxOpExceeded=%d, FinalTsIdx=%d\n",
     MF(txs.u.tx.status[9], AR_TxDone),
     MS(txs.u.tx.status[9], AR_SeqNum),
     MF(txs.u.tx.status[9], AR_TxOpExceeded),
     MS(txs.u.tx.status[9], AR_FinalTxIdx));
 printf("    PowerMgmt=%d, TxTid=%d\n",
     MF(txs.u.tx.status[9], AR_PowerMgmt),
     MS(txs.u.tx.status[9], AR_TxTid));

 printf("\n ------\n");
}
