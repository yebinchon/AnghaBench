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
struct ar5210_desc {int ds_link; int ds_data; int ds_ctl0; int ds_ctl1; } ;

/* Variables and functions */
 int /*<<< orphan*/  AR_AntModeXmit ; 
 int AR_BufLen ; 
 int /*<<< orphan*/  AR_ClearDestMask ; 
 int /*<<< orphan*/  AR_EncryptKeyIdx ; 
 int AR_FrameLen ; 
 int /*<<< orphan*/  AR_FrmType ; 
 int /*<<< orphan*/  AR_LongPkt ; 
 int /*<<< orphan*/  AR_More ; 
 int /*<<< orphan*/  AR_RTSCTSEnable ; 
 int /*<<< orphan*/  AR_RTSDuration ; 
 int /*<<< orphan*/  AR_TxInterReq ; 
 int /*<<< orphan*/  AR_XmitRate ; 
 int FUNC0 (int,int /*<<< orphan*/ ) ; 
 int FUNC1 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ar5210_desc*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 

__attribute__((used)) static void
FUNC6(struct if_ath_alq_payload *a)
{
	struct ar5210_desc txc;

	/* XXX assumes txs is smaller than PAYLOAD_LEN! */
	FUNC4(&txc, &a->payload, sizeof(struct ar5210_desc));

	FUNC5("[%u.%06u] [%llu] TXD\n",
	    (unsigned int) FUNC2(a->hdr.tstamp_sec),
	    (unsigned int) FUNC2(a->hdr.tstamp_usec),
	    (unsigned long long) FUNC3(a->hdr.threadid));

	FUNC5("  link=0x%08x, data=0x%08x\n",
	    txc.ds_link,
	    txc.ds_data);

	/* ds_ctl0 */
	FUNC5("    Frame Len=%d\n", txc.ds_ctl0 & AR_FrameLen);
	FUNC5("    TX Rate=0x%02x, RtsEna=%d, ClrDstMask=%d AntModeXmit=0x%02x\n",
	    FUNC1(txc.ds_ctl0, AR_XmitRate),
	    FUNC0(txc.ds_ctl0, AR_RTSCTSEnable),
	    FUNC0(txc.ds_ctl0, AR_ClearDestMask),
	    FUNC0(txc.ds_ctl0, AR_AntModeXmit));
	FUNC5("    FrmType=0x%02x, TxIntrReq=%d\n",
	    FUNC1(txc.ds_ctl0, AR_FrmType),
	    FUNC0(txc.ds_ctl0, AR_TxInterReq));
	FUNC5("    LongPkt=%d\n", FUNC0(txc.ds_ctl0, AR_LongPkt));

	/* ds_ctl1 */
	FUNC5("    BufLen=%d, TxMore=%d, EncryptKeyIdx=%d, RtsDuration=%d\n",
	    txc.ds_ctl1 & AR_BufLen,
	    FUNC0(txc.ds_ctl1, AR_More),
	    FUNC1(txc.ds_ctl1, AR_EncryptKeyIdx),
	    FUNC1(txc.ds_ctl1, AR_RTSDuration));

	FUNC5("\n ------ \n");
}