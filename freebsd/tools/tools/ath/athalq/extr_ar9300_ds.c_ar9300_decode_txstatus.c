
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int tstamp_usec; int tstamp_sec; int threadid; } ;
struct if_ath_alq_payload {TYPE_1__ hdr; int payload; } ;
struct ar9300_txs {int status4; int status1; int ds_info; int status8; int status3; int status2; int status7; int status5; int status6; } ;


 int AR_TXBFStatus ;
 int AR_ctrl_stat ;
 int AR_data_fail_cnt ;
 int AR_desc_cfg_err ;
 int AR_desc_id ;
 int AR_excessive_retries ;
 int AR_fifounderrun ;
 int AR_filtered ;
 int AR_final_tx_idx ;
 int AR_frm_xmit_ok ;
 int AR_power_mgmt ;
 int AR_rts_fail_cnt ;
 int AR_seq_num ;
 int AR_tx_ba_status ;
 int AR_tx_bf_bw_mismatch ;
 int AR_tx_bf_dest_miss ;
 int AR_tx_bf_expired ;
 int AR_tx_bf_stream_miss ;
 int AR_tx_data_underrun ;
 int AR_tx_delim_underrun ;
 int AR_tx_desc_id ;
 int AR_tx_done ;
 int AR_tx_fast_ts ;
 int AR_tx_op_exceeded ;
 int AR_tx_qcu_num ;
 int AR_tx_rssi_ant00 ;
 int AR_tx_rssi_ant01 ;
 int AR_tx_rssi_ant02 ;
 int AR_tx_rssi_ant10 ;
 int AR_tx_rssi_ant11 ;
 int AR_tx_rssi_ant12 ;
 int AR_tx_rssi_combined ;
 int AR_tx_tid ;
 int AR_tx_timer_expired ;
 int AR_virt_retry_cnt ;
 int MF (int,int ) ;
 int MS (int,int ) ;
 scalar_t__ be32toh (int ) ;
 scalar_t__ be64toh (int ) ;
 int last_ts ;
 int memcpy (struct ar9300_txs*,int *,int) ;
 int printf (char*,...) ;

__attribute__((used)) static void
ar9300_decode_txstatus(struct if_ath_alq_payload *a)
{
 struct ar9300_txs txs;


 memcpy(&txs, &a->payload, sizeof(struct ar9300_txs));

 printf("[%u.%06u] [%llu] TXSTATUS TxTimestamp=%u (%u), DescId=0x%04x, QCU=%d\n",
     (unsigned int) be32toh(a->hdr.tstamp_sec),
     (unsigned int) be32toh(a->hdr.tstamp_usec),
     (unsigned long long) be64toh(a->hdr.threadid),
     txs.status4,
     txs.status4 - last_ts,
     (unsigned int) MS(txs.status1, AR_tx_desc_id),
     (unsigned int) MS(txs.ds_info, AR_tx_qcu_num));
 printf("    DescId=0x%08x\n", txs.status1);

 last_ts = txs.status4;

 printf("    DescLen=%d, TxQcuNum=%d, CtrlStat=%d, DescId=0x%04x\n",
     txs.ds_info & 0xff,
     MS(txs.ds_info, AR_tx_qcu_num),
     MS(txs.ds_info, AR_ctrl_stat),
     MS(txs.ds_info, AR_desc_id));

 printf("    TxTimestamp: %u\n", txs.status4);

 printf("    TxDone=%d, SeqNo=%d, TxOpExceed=%d, TXBFStatus=%d\n",
     MF(txs.status8, AR_tx_done),
     MS(txs.status8, AR_seq_num),
     MF(txs.status8, AR_tx_op_exceeded),
     MS(txs.status8, AR_TXBFStatus));

 printf("    TXBfMismatch=%d, BFStreamMiss=%d, FinalTxIdx=%d\n",
     MF(txs.status8, AR_tx_bf_bw_mismatch),
     MF(txs.status8, AR_tx_bf_stream_miss),
     MS(txs.status8, AR_final_tx_idx));

 printf("    TxBfDestMiss=%d, TxBfExpired=%d, PwrMgmt=%d, Tid=%d,"
     " FastTsBit=%d\n",
     MF(txs.status8, AR_tx_bf_dest_miss),
     MF(txs.status8, AR_tx_bf_expired),
     MF(txs.status8, AR_power_mgmt),
     MS(txs.status8, AR_tx_tid),
     MF(txs.status8, AR_tx_fast_ts));

 printf("    Frmok=%d, xretries=%d, fifounderrun=%d, filt=%d\n",
     MF(txs.status3, AR_frm_xmit_ok),
     MF(txs.status3, AR_excessive_retries),
     MF(txs.status3, AR_fifounderrun),
     MF(txs.status3, AR_filtered));
 printf("    DelimUnderrun=%d, DataUnderun=%d, DescCfgErr=%d,"
     " TxTimerExceeded=%d\n",
     MF(txs.status3, AR_tx_delim_underrun),
     MF(txs.status3, AR_tx_data_underrun),
     MF(txs.status3, AR_desc_cfg_err),
     MF(txs.status3, AR_tx_timer_expired));

 printf("    RTScnt=%d, FailCnt=%d, VRetryCnt=%d\n",
     MS(txs.status3, AR_rts_fail_cnt),
     MS(txs.status3, AR_data_fail_cnt),
     MS(txs.status3, AR_virt_retry_cnt));



 printf("    RX RSSI 0 [%d %d %d]\n",
     MS(txs.status2, AR_tx_rssi_ant00),
     MS(txs.status2, AR_tx_rssi_ant01),
     MS(txs.status2, AR_tx_rssi_ant02));

 printf("    RX RSSI 1 [%d %d %d] Comb=%d\n",
     MS(txs.status7, AR_tx_rssi_ant10),
     MS(txs.status7, AR_tx_rssi_ant11),
     MS(txs.status7, AR_tx_rssi_ant12),
     MS(txs.status7, AR_tx_rssi_combined));

 printf("    BA Valid=%d\n",
     MF(txs.status2, AR_tx_ba_status));

 printf("    BALow=0x%08x\n", txs.status5);
 printf("    BAHigh=0x%08x\n", txs.status6);

 printf("\n ------ \n");
}
