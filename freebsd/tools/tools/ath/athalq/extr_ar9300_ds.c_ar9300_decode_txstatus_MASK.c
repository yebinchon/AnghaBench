#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  tstamp_usec; int /*<<< orphan*/  tstamp_sec; int /*<<< orphan*/  threadid; } ;
struct if_ath_alq_payload {TYPE_1__ hdr; int /*<<< orphan*/  payload; } ;
struct ar9300_txs {int status4; int status1; int ds_info; int status8; int status3; int status2; int status7; int status5; int status6; } ;

/* Variables and functions */
 int /*<<< orphan*/  AR_TXBFStatus ; 
 int /*<<< orphan*/  AR_ctrl_stat ; 
 int /*<<< orphan*/  AR_data_fail_cnt ; 
 int /*<<< orphan*/  AR_desc_cfg_err ; 
 int /*<<< orphan*/  AR_desc_id ; 
 int /*<<< orphan*/  AR_excessive_retries ; 
 int /*<<< orphan*/  AR_fifounderrun ; 
 int /*<<< orphan*/  AR_filtered ; 
 int /*<<< orphan*/  AR_final_tx_idx ; 
 int /*<<< orphan*/  AR_frm_xmit_ok ; 
 int /*<<< orphan*/  AR_power_mgmt ; 
 int /*<<< orphan*/  AR_rts_fail_cnt ; 
 int /*<<< orphan*/  AR_seq_num ; 
 int /*<<< orphan*/  AR_tx_ba_status ; 
 int /*<<< orphan*/  AR_tx_bf_bw_mismatch ; 
 int /*<<< orphan*/  AR_tx_bf_dest_miss ; 
 int /*<<< orphan*/  AR_tx_bf_expired ; 
 int /*<<< orphan*/  AR_tx_bf_stream_miss ; 
 int /*<<< orphan*/  AR_tx_data_underrun ; 
 int /*<<< orphan*/  AR_tx_delim_underrun ; 
 int /*<<< orphan*/  AR_tx_desc_id ; 
 int /*<<< orphan*/  AR_tx_done ; 
 int /*<<< orphan*/  AR_tx_fast_ts ; 
 int /*<<< orphan*/  AR_tx_op_exceeded ; 
 int /*<<< orphan*/  AR_tx_qcu_num ; 
 int /*<<< orphan*/  AR_tx_rssi_ant00 ; 
 int /*<<< orphan*/  AR_tx_rssi_ant01 ; 
 int /*<<< orphan*/  AR_tx_rssi_ant02 ; 
 int /*<<< orphan*/  AR_tx_rssi_ant10 ; 
 int /*<<< orphan*/  AR_tx_rssi_ant11 ; 
 int /*<<< orphan*/  AR_tx_rssi_ant12 ; 
 int /*<<< orphan*/  AR_tx_rssi_combined ; 
 int /*<<< orphan*/  AR_tx_tid ; 
 int /*<<< orphan*/  AR_tx_timer_expired ; 
 int /*<<< orphan*/  AR_virt_retry_cnt ; 
 int FUNC0 (int,int /*<<< orphan*/ ) ; 
 int FUNC1 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int last_ts ; 
 int /*<<< orphan*/  FUNC4 (struct ar9300_txs*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 

__attribute__((used)) static void
FUNC6(struct if_ath_alq_payload *a)
{
	struct ar9300_txs txs;

	/* XXX assumes txs is smaller than PAYLOAD_LEN! */
	FUNC4(&txs, &a->payload, sizeof(struct ar9300_txs));

	FUNC5("[%u.%06u] [%llu] TXSTATUS TxTimestamp=%u (%u), DescId=0x%04x, QCU=%d\n",
	    (unsigned int) FUNC2(a->hdr.tstamp_sec),
	    (unsigned int) FUNC2(a->hdr.tstamp_usec),
	    (unsigned long long) FUNC3(a->hdr.threadid),
	    txs.status4,
	    txs.status4 - last_ts,
	    (unsigned int) FUNC1(txs.status1, AR_tx_desc_id),
	    (unsigned int) FUNC1(txs.ds_info, AR_tx_qcu_num));
	FUNC5("    DescId=0x%08x\n", txs.status1);

	last_ts = txs.status4;

	FUNC5("    DescLen=%d, TxQcuNum=%d, CtrlStat=%d, DescId=0x%04x\n",
	    txs.ds_info & 0xff,
	    FUNC1(txs.ds_info, AR_tx_qcu_num),
	    FUNC1(txs.ds_info, AR_ctrl_stat),
	    FUNC1(txs.ds_info, AR_desc_id));

	FUNC5("    TxTimestamp: %u\n", txs.status4);

	FUNC5("    TxDone=%d, SeqNo=%d, TxOpExceed=%d, TXBFStatus=%d\n",
	    FUNC0(txs.status8, AR_tx_done),
	    FUNC1(txs.status8, AR_seq_num),
	    FUNC0(txs.status8, AR_tx_op_exceeded),
	    FUNC1(txs.status8, AR_TXBFStatus));

	FUNC5("    TXBfMismatch=%d, BFStreamMiss=%d, FinalTxIdx=%d\n",
	    FUNC0(txs.status8, AR_tx_bf_bw_mismatch),
	    FUNC0(txs.status8, AR_tx_bf_stream_miss),
	    FUNC1(txs.status8, AR_final_tx_idx));

	FUNC5("    TxBfDestMiss=%d, TxBfExpired=%d, PwrMgmt=%d, Tid=%d,"
	    " FastTsBit=%d\n",
	    FUNC0(txs.status8, AR_tx_bf_dest_miss),
	    FUNC0(txs.status8, AR_tx_bf_expired),
	    FUNC0(txs.status8, AR_power_mgmt),
	    FUNC1(txs.status8, AR_tx_tid),
	    FUNC0(txs.status8, AR_tx_fast_ts));

	FUNC5("    Frmok=%d, xretries=%d, fifounderrun=%d, filt=%d\n",
	    FUNC0(txs.status3, AR_frm_xmit_ok),
	    FUNC0(txs.status3, AR_excessive_retries),
	    FUNC0(txs.status3, AR_fifounderrun),
	    FUNC0(txs.status3, AR_filtered));
	FUNC5("    DelimUnderrun=%d, DataUnderun=%d, DescCfgErr=%d,"
	    " TxTimerExceeded=%d\n",
	    FUNC0(txs.status3, AR_tx_delim_underrun),
	    FUNC0(txs.status3, AR_tx_data_underrun),
	    FUNC0(txs.status3, AR_desc_cfg_err),
	    FUNC0(txs.status3, AR_tx_timer_expired));

	FUNC5("    RTScnt=%d, FailCnt=%d, VRetryCnt=%d\n",
	    FUNC1(txs.status3, AR_rts_fail_cnt),
	    FUNC1(txs.status3, AR_data_fail_cnt),
	    FUNC1(txs.status3, AR_virt_retry_cnt));



	FUNC5("    RX RSSI 0 [%d %d %d]\n",
	    FUNC1(txs.status2, AR_tx_rssi_ant00),
	    FUNC1(txs.status2, AR_tx_rssi_ant01),
	    FUNC1(txs.status2, AR_tx_rssi_ant02));

	FUNC5("    RX RSSI 1 [%d %d %d] Comb=%d\n",
	    FUNC1(txs.status7, AR_tx_rssi_ant10),
	    FUNC1(txs.status7, AR_tx_rssi_ant11),
	    FUNC1(txs.status7, AR_tx_rssi_ant12),
	    FUNC1(txs.status7, AR_tx_rssi_combined));

	FUNC5("    BA Valid=%d\n",
	    FUNC0(txs.status2, AR_tx_ba_status));

	FUNC5("    BALow=0x%08x\n", txs.status5);
	FUNC5("    BAHigh=0x%08x\n", txs.status6);

	FUNC5("\n ------ \n");
}