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
struct ar5212_desc {int ds_link; int ds_data; int ds_ctl0; int ds_ctl1; int ds_ctl2; int ds_ctl3; } ;

/* Variables and functions */
 int /*<<< orphan*/  AR_AntModeXmit ; 
 int AR_BufLen ; 
 int /*<<< orphan*/  AR_CTSEnable ; 
 int /*<<< orphan*/  AR_ClearDestMask ; 
 int /*<<< orphan*/  AR_CompICVLen ; 
 int /*<<< orphan*/  AR_CompIVLen ; 
 int /*<<< orphan*/  AR_CompProc ; 
 int /*<<< orphan*/  AR_DestIdx ; 
 int /*<<< orphan*/  AR_DestIdxValid ; 
 int /*<<< orphan*/  AR_DurUpdateEna ; 
 int AR_FrameLen ; 
 int /*<<< orphan*/  AR_FrmType ; 
 int /*<<< orphan*/  AR_More ; 
 int /*<<< orphan*/  AR_NoAck ; 
 int /*<<< orphan*/  AR_RTSCTSDuration ; 
 int /*<<< orphan*/  AR_RTSCTSEnable ; 
 int /*<<< orphan*/  AR_RTSCTSRate ; 
 int /*<<< orphan*/  AR_TxInterReq ; 
 int /*<<< orphan*/  AR_VEOL ; 
 int /*<<< orphan*/  AR_XmitDataTries0 ; 
 int /*<<< orphan*/  AR_XmitDataTries1 ; 
 int /*<<< orphan*/  AR_XmitDataTries2 ; 
 int /*<<< orphan*/  AR_XmitDataTries3 ; 
 int /*<<< orphan*/  AR_XmitPower ; 
 int /*<<< orphan*/  AR_XmitRate0 ; 
 int /*<<< orphan*/  AR_XmitRate1 ; 
 int /*<<< orphan*/  AR_XmitRate2 ; 
 int /*<<< orphan*/  AR_XmitRate3 ; 
 int FUNC0 (int,int /*<<< orphan*/ ) ; 
 int FUNC1 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ar5212_desc*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 

__attribute__((used)) static void
FUNC6(struct if_ath_alq_payload *a)
{
	struct ar5212_desc txc;

	/* XXX assumes txs is smaller than PAYLOAD_LEN! */
	FUNC4(&txc, &a->payload, sizeof(struct ar5212_desc));

	FUNC5("[%u.%06u] [%llu] TXD\n",
	    (unsigned int) FUNC2(a->hdr.tstamp_sec),
	    (unsigned int) FUNC2(a->hdr.tstamp_usec),
	    (unsigned long long) FUNC3(a->hdr.threadid));

	FUNC5("  link=0x%08x, data=0x%08x\n",
	    txc.ds_link,
	    txc.ds_data);

	/* ds_ctl0 */
	FUNC5("    Frame Len=%d\n", txc.ds_ctl0 & AR_FrameLen);
	FUNC5("    TX power0=%d, RtsEna=%d, Veol=%d, ClrDstMask=%d AntModeXmit=0x%02x\n",
	    FUNC1(txc.ds_ctl0, AR_XmitPower),
	    FUNC0(txc.ds_ctl0, AR_RTSCTSEnable),
	    FUNC0(txc.ds_ctl0, AR_VEOL),
	    FUNC0(txc.ds_ctl0, AR_ClearDestMask),
	    FUNC0(txc.ds_ctl0, AR_AntModeXmit));
	FUNC5("    TxIntrReq=%d, DestIdxValid=%d, CtsEnable=%d\n",
	    FUNC0(txc.ds_ctl0, AR_TxInterReq),
	    FUNC0(txc.ds_ctl0, AR_DestIdxValid),
	    FUNC0(txc.ds_ctl0, AR_CTSEnable));

	/* ds_ctl1 */
	FUNC5("    BufLen=%d, TxMore=%d, DestIdx=%d,"
	    " FrType=0x%x\n",
	    txc.ds_ctl1 & AR_BufLen,
	    FUNC0(txc.ds_ctl1, AR_More),
	    FUNC1(txc.ds_ctl1, AR_DestIdx),
	    FUNC1(txc.ds_ctl1, AR_FrmType));
	FUNC5("    NoAck=%d, CompProc=%d, CompIVLen=%d, CompICVLen=%d\n",
	    FUNC0(txc.ds_ctl1, AR_NoAck),
	    FUNC1(txc.ds_ctl1, AR_CompProc),
	    FUNC1(txc.ds_ctl1, AR_CompIVLen),
	    FUNC1(txc.ds_ctl1, AR_CompICVLen));

	/* ds_ctl2 */
	FUNC5("    DurUpEna=%d, Burstdur=0x%04x\n",
	    FUNC0(txc.ds_ctl2, AR_DurUpdateEna),
	    FUNC1(txc.ds_ctl2, AR_RTSCTSDuration));
	FUNC5("    Try0=%d, Try1=%d, Try2=%d, Try3=%d\n",
	    FUNC1(txc.ds_ctl2, AR_XmitDataTries0),
	    FUNC1(txc.ds_ctl2, AR_XmitDataTries1),
	    FUNC1(txc.ds_ctl2, AR_XmitDataTries2),
	    FUNC1(txc.ds_ctl2, AR_XmitDataTries3));

	/* ds_ctl3 */
	FUNC5("    rate0=0x%02x, rate1=0x%02x, rate2=0x%02x, rate3=0x%02x\n",
	    FUNC1(txc.ds_ctl3, AR_XmitRate0),
	    FUNC1(txc.ds_ctl3, AR_XmitRate1),
	    FUNC1(txc.ds_ctl3, AR_XmitRate2),
	    FUNC1(txc.ds_ctl3, AR_XmitRate3));
	FUNC5("    RtsCtsRate=0x%02x\n",
	    FUNC1(txc.ds_ctl3, AR_RTSCTSRate));

	FUNC5("\n ------ \n");
}