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
struct TYPE_5__ {int /*<<< orphan*/  status1; int /*<<< orphan*/  status0; } ;
struct TYPE_6__ {TYPE_2__ tx; } ;
struct ar5212_desc {TYPE_3__ u; } ;

/* Variables and functions */
 int /*<<< orphan*/  AR_AckSigStrength ; 
 int /*<<< orphan*/  AR_CompSuccess ; 
 int /*<<< orphan*/  AR_DataFailCnt ; 
 int /*<<< orphan*/  AR_Done ; 
 int /*<<< orphan*/  AR_ExcessiveRetries ; 
 int /*<<< orphan*/  AR_FIFOUnderrun ; 
 int /*<<< orphan*/  AR_Filtered ; 
 int /*<<< orphan*/  AR_FinalTSIndex ; 
 int /*<<< orphan*/  AR_FrmXmitOK ; 
 int /*<<< orphan*/  AR_RTSFailCnt ; 
 int /*<<< orphan*/  AR_SendTimestamp ; 
 int /*<<< orphan*/  AR_SeqNum ; 
 int /*<<< orphan*/  AR_VirtCollCnt ; 
 int /*<<< orphan*/  AR_XmitAtenna ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ar5212_desc*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 

__attribute__((used)) static void
FUNC6(struct if_ath_alq_payload *a)
{
	struct ar5212_desc txs;

	/* XXX assumes txs is smaller than PAYLOAD_LEN! */
	FUNC4(&txs, &a->payload, sizeof(struct ar5212_desc));

	FUNC5("[%u.%06u] [%llu] TXSTATUS: TxDone=%d, TS=0x%08x\n\n",
	    (unsigned int) FUNC2(a->hdr.tstamp_sec),
	    (unsigned int) FUNC2(a->hdr.tstamp_usec),
	    (unsigned long long) FUNC3(a->hdr.threadid),
	    FUNC0(txs.u.tx.status1, AR_Done),
	    FUNC1(txs.u.tx.status0, AR_SendTimestamp));

	/* ds_txstatus0 */
	FUNC5("    Frmok=%d, xretries=%d, fifounderrun=%d, filt=%d\n",
	    FUNC0(txs.u.tx.status0, AR_FrmXmitOK),
	    FUNC0(txs.u.tx.status0, AR_ExcessiveRetries),
	    FUNC0(txs.u.tx.status0, AR_FIFOUnderrun),
	    FUNC0(txs.u.tx.status0, AR_Filtered));
	FUNC5("    RTScnt=%d, FailCnt=%d, VCollCnt=%d\n",
	    FUNC1(txs.u.tx.status0, AR_RTSFailCnt),
	    FUNC1(txs.u.tx.status0, AR_DataFailCnt),
	    FUNC1(txs.u.tx.status0, AR_VirtCollCnt));
	FUNC5("    SndTimestamp=0x%04x\n",
	    FUNC1(txs.u.tx.status0, AR_SendTimestamp));

	/* ds_txstatus1 */
	FUNC5("    Done=%d, SeqNum=0x%04x, AckRSSI=%d, FinalTSI=%d\n",
	    FUNC0(txs.u.tx.status1, AR_Done),
	    FUNC1(txs.u.tx.status1, AR_SeqNum),
	    FUNC1(txs.u.tx.status1, AR_AckSigStrength),
	    FUNC1(txs.u.tx.status1, AR_FinalTSIndex));
	FUNC5("    CompSuccess=%d, XmitAntenna=%d\n",
	    FUNC0(txs.u.tx.status1, AR_CompSuccess),
	    FUNC0(txs.u.tx.status1, AR_XmitAtenna));

	FUNC5("\n ------\n");
}