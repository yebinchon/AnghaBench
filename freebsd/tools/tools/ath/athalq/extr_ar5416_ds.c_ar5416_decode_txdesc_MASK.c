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
struct ar5416_desc {int ds_link; int ds_data; int ds_ctl0; int ds_ctl1; int ds_ctl2; int ds_ctl3; int ds_ctl4; int ds_ctl5; int ds_ctl6; int ds_ctl7; int ds_ctl8; int ds_ctl9; int ds_ctl10; int ds_ctl11; } ;

/* Variables and functions */
 int /*<<< orphan*/  AR_2040_0 ; 
 int /*<<< orphan*/  AR_2040_1 ; 
 int /*<<< orphan*/  AR_2040_2 ; 
 int /*<<< orphan*/  AR_2040_3 ; 
 int /*<<< orphan*/  AR_AggrLen ; 
 int AR_AntCtl0 ; 
 int AR_AntCtl1 ; 
 int AR_AntCtl2 ; 
 int AR_AntCtl3 ; 
 int AR_BufLen ; 
 int /*<<< orphan*/  AR_BurstDur ; 
 int /*<<< orphan*/  AR_CTSEnable ; 
 int /*<<< orphan*/  AR_ChainSel0 ; 
 int /*<<< orphan*/  AR_ChainSel1 ; 
 int /*<<< orphan*/  AR_ChainSel2 ; 
 int /*<<< orphan*/  AR_ChainSel3 ; 
 int /*<<< orphan*/  AR_ClrDestMask ; 
 int /*<<< orphan*/  AR_CorruptFCS ; 
 int /*<<< orphan*/  AR_DestIdx ; 
 int /*<<< orphan*/  AR_DestIdxValid ; 
 int /*<<< orphan*/  AR_DurUpdateEn ; 
 int /*<<< orphan*/  AR_EncrType ; 
 int /*<<< orphan*/  AR_ExtAndCtl ; 
 int /*<<< orphan*/  AR_ExtOnly ; 
 int AR_FrameLen ; 
 int /*<<< orphan*/  AR_FrameType ; 
 int /*<<< orphan*/  AR_GI0 ; 
 int /*<<< orphan*/  AR_GI1 ; 
 int /*<<< orphan*/  AR_GI2 ; 
 int /*<<< orphan*/  AR_GI3 ; 
 int /*<<< orphan*/  AR_InsertTS ; 
 int /*<<< orphan*/  AR_IsAggr ; 
 int /*<<< orphan*/  AR_MoreAggr ; 
 int /*<<< orphan*/  AR_MoreRifs ; 
 int /*<<< orphan*/  AR_NoAck ; 
 int /*<<< orphan*/  AR_PacketDur0 ; 
 int /*<<< orphan*/  AR_PacketDur1 ; 
 int /*<<< orphan*/  AR_PacketDur2 ; 
 int /*<<< orphan*/  AR_PacketDur3 ; 
 int /*<<< orphan*/  AR_PadDelim ; 
 int /*<<< orphan*/  AR_RTSCTSQual0 ; 
 int /*<<< orphan*/  AR_RTSCTSQual1 ; 
 int /*<<< orphan*/  AR_RTSCTSQual2 ; 
 int /*<<< orphan*/  AR_RTSCTSQual3 ; 
 int /*<<< orphan*/  AR_RTSCTSRate ; 
 int /*<<< orphan*/  AR_RTSEnable ; 
 int /*<<< orphan*/  AR_STBC0 ; 
 int /*<<< orphan*/  AR_STBC1 ; 
 int /*<<< orphan*/  AR_STBC2 ; 
 int /*<<< orphan*/  AR_STBC3 ; 
 int /*<<< orphan*/  AR_TxIntrReq ; 
 int /*<<< orphan*/  AR_TxMore ; 
 int /*<<< orphan*/  AR_VEOL ; 
 int /*<<< orphan*/  AR_VirtMoreFrag ; 
 int /*<<< orphan*/  AR_XmitDataTries0 ; 
 int /*<<< orphan*/  AR_XmitDataTries1 ; 
 int /*<<< orphan*/  AR_XmitDataTries2 ; 
 int /*<<< orphan*/  AR_XmitDataTries3 ; 
 int /*<<< orphan*/  AR_XmitPower ; 
 int /*<<< orphan*/  AR_XmitPower1 ; 
 int /*<<< orphan*/  AR_XmitPower2 ; 
 int /*<<< orphan*/  AR_XmitPower3 ; 
 int /*<<< orphan*/  AR_XmitRate0 ; 
 int /*<<< orphan*/  AR_XmitRate1 ; 
 int /*<<< orphan*/  AR_XmitRate2 ; 
 int /*<<< orphan*/  AR_XmitRate3 ; 
 int FUNC0 (int,int /*<<< orphan*/ ) ; 
 int FUNC1 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ar5416_desc*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 

__attribute__((used)) static void
FUNC6(struct if_ath_alq_payload *a)
{
	struct ar5416_desc txc;

	/* XXX assumes txs is smaller than PAYLOAD_LEN! */
	FUNC4(&txc, &a->payload, sizeof(struct ar5416_desc));

	FUNC5("[%u.%06u] [%llu] TXD\n",
	    (unsigned int) FUNC2(a->hdr.tstamp_sec),
	    (unsigned int) FUNC2(a->hdr.tstamp_usec),
	    (unsigned long long) FUNC3(a->hdr.threadid));

	FUNC5("  link=0x%08x, data=0x%08x\n",
	    txc.ds_link,
	    txc.ds_data);

	/* ds_ctl0 */
	FUNC5("    Frame Len=%d, VMF=%d\n",
	     txc.ds_ctl0 & AR_FrameLen,
	    FUNC0(txc.ds_ctl0, AR_VirtMoreFrag));
	FUNC5("    TX power0=%d, RtsEna=%d, Veol=%d, ClrDstMask=%d\n",
	    FUNC1(txc.ds_ctl0, AR_XmitPower),
	    FUNC0(txc.ds_ctl0, AR_RTSEnable),
	    FUNC0(txc.ds_ctl0, AR_VEOL),
	    FUNC0(txc.ds_ctl0, AR_ClrDestMask));
	FUNC5("    TxIntrReq=%d, DestIdxValid=%d, CtsEnable=%d\n",
	    FUNC0(txc.ds_ctl0, AR_TxIntrReq),
	    FUNC0(txc.ds_ctl0, AR_DestIdxValid),
	    FUNC0(txc.ds_ctl0, AR_CTSEnable));

	/* ds_ctl1 */
	FUNC5("    BufLen=%d, TxMore=%d, DestIdx=%d,"
	    " FrType=0x%x\n",
	    txc.ds_ctl1 & AR_BufLen,
	    FUNC0(txc.ds_ctl1, AR_TxMore),
	    FUNC1(txc.ds_ctl1, AR_DestIdx),
	    FUNC1(txc.ds_ctl1, AR_FrameType));
	FUNC5("    NoAck=%d, InsertTs=%d, CorruptFcs=%d, ExtOnly=%d,"
	    " ExtAndCtl=%d\n",
	    FUNC0(txc.ds_ctl1, AR_NoAck),
	    FUNC0(txc.ds_ctl1, AR_InsertTS),
	    FUNC0(txc.ds_ctl1, AR_CorruptFCS),
	    FUNC0(txc.ds_ctl1, AR_ExtOnly),
	    FUNC0(txc.ds_ctl1, AR_ExtAndCtl));
	FUNC5("    MoreAggr=%d, IsAggr=%d, MoreRifs=%d\n",
	    FUNC0(txc.ds_ctl1, AR_MoreAggr),
	    FUNC0(txc.ds_ctl1, AR_IsAggr),
	    FUNC0(txc.ds_ctl1, AR_MoreRifs));

	/* ds_ctl2 */
	FUNC5("    DurUpEna=%d, Burstdur=0x%04x\n",
	    FUNC0(txc.ds_ctl2, AR_DurUpdateEn),
	    FUNC1(txc.ds_ctl2, AR_BurstDur));
	FUNC5("    Try0=%d, Try1=%d, Try2=%d, Try3=%d\n",
	    FUNC1(txc.ds_ctl2, AR_XmitDataTries0),
	    FUNC1(txc.ds_ctl2, AR_XmitDataTries1),
	    FUNC1(txc.ds_ctl2, AR_XmitDataTries2),
	    FUNC1(txc.ds_ctl2, AR_XmitDataTries3));

	/* ds_ctl3, 4 */
	FUNC5("    try 0: Rate=0x%02x, PktDur=%d, RTS/CTS ena=%d\n",
	    FUNC1(txc.ds_ctl3, AR_XmitRate0),
	    FUNC1(txc.ds_ctl4, AR_PacketDur0),
	    FUNC0(txc.ds_ctl4, AR_RTSCTSQual0));
	FUNC5("    try 1: Rate=0x%02x, PktDur=%d, RTS/CTS ena=%d\n",
	    FUNC1(txc.ds_ctl3, AR_XmitRate1),
	    FUNC1(txc.ds_ctl4, AR_PacketDur1),
	    FUNC0(txc.ds_ctl4, AR_RTSCTSQual1));

	/* ds_ctl3, 5 */
	FUNC5("    try 2: Rate=0x%02x, PktDur=%d, RTS/CTS ena=%d\n",
	    FUNC1(txc.ds_ctl3, AR_XmitRate2),
	    FUNC1(txc.ds_ctl5, AR_PacketDur2),
	    FUNC0(txc.ds_ctl5, AR_RTSCTSQual2));
	FUNC5("    try 3: Rate=0x%02x, PktDur=%d, RTS/CTS ena=%d\n",
	    FUNC1(txc.ds_ctl3, AR_XmitRate3),
	    FUNC1(txc.ds_ctl5, AR_PacketDur3),
	    FUNC0(txc.ds_ctl5, AR_RTSCTSQual3));

	/* ds_ctl6 */
	FUNC5("    AggrLen=%d, PadDelim=%d, EncrType=%d\n",
	    FUNC1(txc.ds_ctl6, AR_AggrLen),
	    FUNC1(txc.ds_ctl6, AR_PadDelim),
	    FUNC1(txc.ds_ctl6, AR_EncrType));

	/* ds_ctl7 */
	FUNC5("    try 0: chainMask=0x%x, GI=%d, 2040=%d, STBC=%d\n",
	    FUNC1(txc.ds_ctl7, AR_ChainSel0),
	    FUNC0(txc.ds_ctl7, AR_GI0),
	    FUNC0(txc.ds_ctl7, AR_2040_0),
	    FUNC0(txc.ds_ctl7, AR_STBC0));
	FUNC5("    try 1: chainMask=0x%x, GI=%d, 2040=%d, STBC=%d\n",
	    FUNC1(txc.ds_ctl7, AR_ChainSel1),
	    FUNC0(txc.ds_ctl7, AR_GI1),
	    FUNC0(txc.ds_ctl7, AR_2040_1),
	    FUNC0(txc.ds_ctl7, AR_STBC1));
	FUNC5("    try 2: chainMask=0x%x, GI=%d, 2040=%d, STBC=%d\n",
	    FUNC1(txc.ds_ctl7, AR_ChainSel2),
	    FUNC0(txc.ds_ctl7, AR_GI2),
	    FUNC0(txc.ds_ctl7, AR_2040_2),
	    FUNC0(txc.ds_ctl7, AR_STBC2));
	FUNC5("    try 3: chainMask=0x%x, GI=%d, 2040=%d, STBC=%d\n",
	    FUNC1(txc.ds_ctl7, AR_ChainSel3),
	    FUNC0(txc.ds_ctl7, AR_GI3),
	    FUNC0(txc.ds_ctl7, AR_2040_3),
	    FUNC0(txc.ds_ctl7, AR_STBC3));

	FUNC5("    RTSCtsRate=0x%02x\n", FUNC1(txc.ds_ctl7, AR_RTSCTSRate));

	/* ds_ctl8 */
	FUNC5("    try 0: ant=0x%08x\n", txc.ds_ctl8 &  AR_AntCtl0);

	/* ds_ctl9 */
	FUNC5("    try 1: TxPower=%d, ant=0x%08x\n",
	    FUNC1(txc.ds_ctl9, AR_XmitPower1),
	    txc.ds_ctl9 & AR_AntCtl1);

	/* ds_ctl10 */
	FUNC5("    try 2: TxPower=%d, ant=0x%08x\n",
	    FUNC1(txc.ds_ctl10, AR_XmitPower2),
	    txc.ds_ctl10 & AR_AntCtl2);

	/* ds_ctl11 */
	FUNC5("    try 3: TxPower=%d, ant=0x%08x\n",
	    FUNC1(txc.ds_ctl11, AR_XmitPower3),
	    txc.ds_ctl11 & AR_AntCtl3);

	FUNC5("\n ------ \n");
}