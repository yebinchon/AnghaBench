#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  tstamp_usec; int /*<<< orphan*/  tstamp_sec; int /*<<< orphan*/  threadid; } ;
struct if_ath_alq_payload {TYPE_1__ hdr; int /*<<< orphan*/  payload; } ;
struct TYPE_5__ {int* status; } ;
struct TYPE_6__ {TYPE_2__ tx; } ;
struct ar5416_desc {TYPE_3__ u; } ;

/* Variables and functions */
 int /*<<< orphan*/  AR_DataFailCnt ; 
 int /*<<< orphan*/  AR_DescCfgErr ; 
 int /*<<< orphan*/  AR_ExcessiveRetries ; 
 int /*<<< orphan*/  AR_FIFOUnderrun ; 
 int /*<<< orphan*/  AR_Filtered ; 
 int /*<<< orphan*/  AR_FinalTxIdx ; 
 int /*<<< orphan*/  AR_FrmXmitOK ; 
 int /*<<< orphan*/  AR_PowerMgmt ; 
 int /*<<< orphan*/  AR_RTSFailCnt ; 
 int /*<<< orphan*/  AR_SeqNum ; 
 int /*<<< orphan*/  AR_TxBaStatus ; 
 int /*<<< orphan*/  AR_TxDataUnderrun ; 
 int /*<<< orphan*/  AR_TxDelimUnderrun ; 
 int /*<<< orphan*/  AR_TxDone ; 
 int /*<<< orphan*/  AR_TxOpExceeded ; 
 int /*<<< orphan*/  AR_TxRSSIAnt00 ; 
 int /*<<< orphan*/  AR_TxRSSIAnt01 ; 
 int /*<<< orphan*/  AR_TxRSSIAnt02 ; 
 int /*<<< orphan*/  AR_TxRSSIAnt10 ; 
 int /*<<< orphan*/  AR_TxRSSIAnt11 ; 
 int /*<<< orphan*/  AR_TxRSSIAnt12 ; 
 int /*<<< orphan*/  AR_TxRSSICombined ; 
 int /*<<< orphan*/  AR_TxTid ; 
 int /*<<< orphan*/  AR_TxTimerExpired ; 
 int /*<<< orphan*/  AR_VirtRetryCnt ; 
 int FUNC0 (int,int /*<<< orphan*/ ) ; 
 int FUNC1 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ar5416_desc*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 

__attribute__((used)) static void
FUNC6(struct if_ath_alq_payload *a)
{
	struct ar5416_desc txs;

	/* XXX assumes txs is smaller than PAYLOAD_LEN! */
	FUNC4(&txs, &a->payload, sizeof(struct ar5416_desc));

	FUNC5("[%u.%06u] [%llu] TXSTATUS: TxDone=%d, FrmOk=%d, filt=%d, TS=0x%08x\n",
	    (unsigned int) FUNC2(a->hdr.tstamp_sec),
	    (unsigned int) FUNC2(a->hdr.tstamp_usec),
	    (unsigned long long) FUNC3(a->hdr.threadid),
	    FUNC0(txs.u.tx.status[9], AR_TxDone),
	    FUNC0(txs.u.tx.status[1], AR_FrmXmitOK),
	    FUNC0(txs.u.tx.status[1], AR_Filtered),
	    txs.u.tx.status[2]);

	/* ds_txstatus0 */
	FUNC5("    RX RSSI 0 [%d %d %d]",
	    FUNC1(txs.u.tx.status[0], AR_TxRSSIAnt00),
	    FUNC1(txs.u.tx.status[0], AR_TxRSSIAnt01),
	    FUNC1(txs.u.tx.status[0], AR_TxRSSIAnt02));

	/* ds_txstatus5 */
	FUNC5(" RX RSSI 1 [%d %d %d] Comb=%d\n",
	    FUNC1(txs.u.tx.status[5], AR_TxRSSIAnt10),
	    FUNC1(txs.u.tx.status[5], AR_TxRSSIAnt11),
	    FUNC1(txs.u.tx.status[5], AR_TxRSSIAnt12),
	    FUNC1(txs.u.tx.status[5], AR_TxRSSICombined));

	/* ds_txstatus0 */
	FUNC5("    BA Valid=%d",
	    FUNC0(txs.u.tx.status[0], AR_TxBaStatus));

	/* ds_txstatus1 */
	FUNC5(", Frmok=%d, xretries=%d, fifounderrun=%d, filt=%d\n",
	    FUNC0(txs.u.tx.status[1], AR_FrmXmitOK),
	    FUNC0(txs.u.tx.status[1], AR_ExcessiveRetries),
	    FUNC0(txs.u.tx.status[1], AR_FIFOUnderrun),
	    FUNC0(txs.u.tx.status[1], AR_Filtered));
	FUNC5("    DelimUnderrun=%d, DataUnderun=%d, DescCfgErr=%d,"
	    " TxTimerExceeded=%d\n",
	    FUNC0(txs.u.tx.status[1], AR_TxDelimUnderrun),
	    FUNC0(txs.u.tx.status[1], AR_TxDataUnderrun),
	    FUNC0(txs.u.tx.status[1], AR_DescCfgErr),
	    FUNC0(txs.u.tx.status[1], AR_TxTimerExpired));

	FUNC5("    RTScnt=%d, FailCnt=%d, VRetryCnt=%d\n",
	    FUNC1(txs.u.tx.status[1], AR_RTSFailCnt),
	    FUNC1(txs.u.tx.status[1], AR_DataFailCnt),
	    FUNC1(txs.u.tx.status[1], AR_VirtRetryCnt));

	/* ds_txstatus2 */
	FUNC5("    TxTimestamp=0x%08x", txs.u.tx.status[2]);

	/* ds_txstatus3 */
	/* ds_txstatus4 */
	FUNC5(", BALow=0x%08x", txs.u.tx.status[3]);
	FUNC5(", BAHigh=0x%08x\n", txs.u.tx.status[4]);


	/* ds_txstatus6 */
	/* ds_txstatus7 */
	/* ds_txstatus8 */
	FUNC5("    TxEVM[0]=0x%08x, TxEVM[1]=0x%08x, TxEVM[2]=0x%08x\n",
	    txs.u.tx.status[6],
	    txs.u.tx.status[7],
	    txs.u.tx.status[8]);

	/* ds_txstatus9 */
	FUNC5("    TxDone=%d, SeqNum=0x%04x, TxOpExceeded=%d, FinalTsIdx=%d\n",
	    FUNC0(txs.u.tx.status[9], AR_TxDone),
	    FUNC1(txs.u.tx.status[9], AR_SeqNum),
	    FUNC0(txs.u.tx.status[9], AR_TxOpExceeded),
	    FUNC1(txs.u.tx.status[9], AR_FinalTxIdx));
	FUNC5("    PowerMgmt=%d, TxTid=%d\n",
	    FUNC0(txs.u.tx.status[9], AR_PowerMgmt),
	    FUNC1(txs.u.tx.status[9], AR_TxTid));

	FUNC5("\n ------\n");
}