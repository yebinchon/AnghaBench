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
struct ar9300_txc {int ds_ctl10; int ds_info; int ds_link; int ds_data0; int ds_ctl3; int ds_data1; int ds_ctl5; int ds_data2; int ds_ctl7; int ds_data3; int ds_ctl9; int ds_ctl11; int ds_ctl12; int ds_ctl13; int ds_ctl14; int ds_ctl15; int ds_ctl16; int ds_ctl17; int ds_ctl18; int ds_ctl19; int ds_ctl20; int ds_ctl21; int ds_ctl22; } ;

/* Variables and functions */
 int /*<<< orphan*/  AR_2040_0 ; 
 int /*<<< orphan*/  AR_2040_1 ; 
 int /*<<< orphan*/  AR_2040_2 ; 
 int /*<<< orphan*/  AR_2040_3 ; 
 int /*<<< orphan*/  AR_aggr_len ; 
 int /*<<< orphan*/  AR_buf_len ; 
 int /*<<< orphan*/  AR_burst_dur ; 
 int /*<<< orphan*/  AR_calibrating ; 
 int /*<<< orphan*/  AR_chain_sel0 ; 
 int /*<<< orphan*/  AR_chain_sel1 ; 
 int /*<<< orphan*/  AR_chain_sel2 ; 
 int /*<<< orphan*/  AR_chain_sel3 ; 
 int /*<<< orphan*/  AR_clr_dest_mask ; 
 int /*<<< orphan*/  AR_corrupt_fcs ; 
 int /*<<< orphan*/  AR_ctrl_stat ; 
 int /*<<< orphan*/  AR_cts_enable ; 
 int /*<<< orphan*/  AR_desc_id ; 
 int /*<<< orphan*/  AR_dest_idx ; 
 int /*<<< orphan*/  AR_dest_idx_valid ; 
 int /*<<< orphan*/  AR_dur_update_ena ; 
 int /*<<< orphan*/  AR_encr_type ; 
 int /*<<< orphan*/  AR_ext_and_ctl ; 
 int /*<<< orphan*/  AR_ext_only ; 
 int AR_frame_len ; 
 int /*<<< orphan*/  AR_frame_type ; 
 int /*<<< orphan*/  AR_gi0 ; 
 int /*<<< orphan*/  AR_gi1 ; 
 int /*<<< orphan*/  AR_gi2 ; 
 int /*<<< orphan*/  AR_gi3 ; 
 int /*<<< orphan*/  AR_insert_ts ; 
 int /*<<< orphan*/  AR_is_aggr ; 
 int /*<<< orphan*/  AR_ldpc ; 
 int /*<<< orphan*/  AR_loc_mode ; 
 int /*<<< orphan*/  AR_low_rx_chain ; 
 int /*<<< orphan*/  AR_more_rifs ; 
 int /*<<< orphan*/  AR_ness ; 
 int /*<<< orphan*/  AR_ness1 ; 
 int /*<<< orphan*/  AR_ness2 ; 
 int /*<<< orphan*/  AR_ness3 ; 
 int /*<<< orphan*/  AR_no_ack ; 
 int /*<<< orphan*/  AR_not_sounding ; 
 int /*<<< orphan*/  AR_packet_dur0 ; 
 int /*<<< orphan*/  AR_packet_dur1 ; 
 int /*<<< orphan*/  AR_packet_dur2 ; 
 int /*<<< orphan*/  AR_packet_dur3 ; 
 int /*<<< orphan*/  AR_pad_delim ; 
 int /*<<< orphan*/  AR_paprd_chain_mask ; 
 int /*<<< orphan*/  AR_rts_cts_qual0 ; 
 int /*<<< orphan*/  AR_rts_cts_qual1 ; 
 int /*<<< orphan*/  AR_rts_cts_qual2 ; 
 int /*<<< orphan*/  AR_rts_cts_qual3 ; 
 int /*<<< orphan*/  AR_rts_enable ; 
 int /*<<< orphan*/  AR_stbc0 ; 
 int /*<<< orphan*/  AR_stbc1 ; 
 int /*<<< orphan*/  AR_stbc2 ; 
 int /*<<< orphan*/  AR_stbc3 ; 
 int AR_tx_ant0 ; 
 int AR_tx_ant1 ; 
 int AR_tx_ant2 ; 
 int AR_tx_ant3 ; 
 int /*<<< orphan*/  AR_tx_ant_sel0 ; 
 int /*<<< orphan*/  AR_tx_ant_sel1 ; 
 int /*<<< orphan*/  AR_tx_ant_sel2 ; 
 int /*<<< orphan*/  AR_tx_ant_sel3 ; 
 int /*<<< orphan*/  AR_tx_clear_retry ; 
 int /*<<< orphan*/  AR_tx_dc_ap_sta_sel ; 
 int /*<<< orphan*/  AR_tx_desc_id ; 
 int /*<<< orphan*/  AR_tx_intr_req ; 
 int /*<<< orphan*/  AR_tx_more ; 
 int AR_tx_ptr_chk_sum ; 
 int /*<<< orphan*/  AR_tx_qcu_num ; 
 int /*<<< orphan*/  AR_veol ; 
 int /*<<< orphan*/  AR_virt_more_frag ; 
 int /*<<< orphan*/  AR_xmit_data_tries0 ; 
 int /*<<< orphan*/  AR_xmit_data_tries1 ; 
 int /*<<< orphan*/  AR_xmit_data_tries2 ; 
 int /*<<< orphan*/  AR_xmit_data_tries3 ; 
 int /*<<< orphan*/  AR_xmit_power0 ; 
 int /*<<< orphan*/  AR_xmit_power1 ; 
 int /*<<< orphan*/  AR_xmit_power2 ; 
 int /*<<< orphan*/  AR_xmit_power3 ; 
 int /*<<< orphan*/  AR_xmit_rate0 ; 
 int /*<<< orphan*/  AR_xmit_rate1 ; 
 int /*<<< orphan*/  AR_xmit_rate2 ; 
 int /*<<< orphan*/  AR_xmit_rate3 ; 
 int FUNC0 (int,int /*<<< orphan*/ ) ; 
 int FUNC1 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ar9300_txc*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 

__attribute__((used)) static void
FUNC6(struct if_ath_alq_payload *a)
{
	struct ar9300_txc txc;

	/* XXX assumes txs is smaller than PAYLOAD_LEN! */
	FUNC4(&txc, &a->payload, 96);

	FUNC5("[%u.%06u] [%llu] TXD DescId=0x%04x\n",
	    (unsigned int) FUNC2(a->hdr.tstamp_sec),
	    (unsigned int) FUNC2(a->hdr.tstamp_usec),
	    (unsigned long long) FUNC3(a->hdr.threadid),
	    (unsigned int) FUNC1(txc.ds_ctl10, AR_tx_desc_id));

	FUNC5("  DescLen=%d, TxQcuNum=%d, CtrlStat=%d, DescId=0x%04x\n",
	    txc.ds_info & 0xff,
	    FUNC1(txc.ds_info, AR_tx_qcu_num),
	    FUNC1(txc.ds_info, AR_ctrl_stat),
	    FUNC1(txc.ds_info, AR_desc_id));

	/* link */
	FUNC5("    Link 0x%08x\n", txc.ds_link);

	/* data0 */
	FUNC5("    Data0 0x%08x Len %d\n",
	    txc.ds_data0,
	    FUNC1(txc.ds_ctl3, AR_buf_len));

	/* data1 */
	FUNC5("    Data1 0x%08x Len %d\n",
	    txc.ds_data1,
	    FUNC1(txc.ds_ctl5, AR_buf_len));

	/* data2 */
	FUNC5("    Data2 0x%08x Len %d\n",
	    txc.ds_data2,
	    FUNC1(txc.ds_ctl7, AR_buf_len));

	/* data3 */
	FUNC5("    Data3 0x%08x Len %d\n",
	    txc.ds_data3,
	    FUNC1(txc.ds_ctl9, AR_buf_len));
	

	/* ctl10 */
	FUNC5("    Desc ID=0x%04x, Chksum=0x%04x (ctl10=0x%08x)\n",
	    FUNC1(txc.ds_ctl10, AR_tx_desc_id),
	    txc.ds_ctl10 & AR_tx_ptr_chk_sum,
	    txc.ds_ctl10);

	/* ctl11 */
	FUNC5("    Frame Len=%d, VMF=%d, LowRxChain=%d, TxClrRetry=%d\n",
	     txc.ds_ctl11 & AR_frame_len,
	    FUNC0(txc.ds_ctl11, AR_virt_more_frag),
	    FUNC0(txc.ds_ctl11, AR_low_rx_chain),
	    FUNC0(txc.ds_ctl11, AR_tx_clear_retry));
	FUNC5("    TX power 0 = %d, RtsEna=%d, Veol=%d, ClrDstMask=%d\n",
	    FUNC1(txc.ds_ctl11, AR_xmit_power0),
	    FUNC0(txc.ds_ctl11, AR_rts_enable),
	    FUNC0(txc.ds_ctl11, AR_veol),
	    FUNC0(txc.ds_ctl11, AR_clr_dest_mask));
	FUNC5("    TxIntrReq=%d, DestIdxValid=%d, CtsEnable=%d\n",
	    FUNC0(txc.ds_ctl11, AR_tx_intr_req),
	    FUNC0(txc.ds_ctl11, AR_dest_idx_valid),
	    FUNC0(txc.ds_ctl11, AR_cts_enable));

	/* ctl12 */
	FUNC5("    Paprd Chain Mask=0x%x, TxMore=%d, DestIdx=%d,"
	    " FrType=0x%x\n",
	    FUNC1(txc.ds_ctl12, AR_paprd_chain_mask),
	    FUNC0(txc.ds_ctl12, AR_tx_more),
	    FUNC1(txc.ds_ctl12, AR_dest_idx),
	    FUNC1(txc.ds_ctl12, AR_frame_type));
	FUNC5("    NoAck=%d, InsertTs=%d, CorruptFcs=%d, ExtOnly=%d,"
	    " ExtAndCtl=%d\n",
	    FUNC0(txc.ds_ctl12, AR_no_ack),
	    FUNC0(txc.ds_ctl12, AR_insert_ts),
	    FUNC0(txc.ds_ctl12, AR_corrupt_fcs),
	    FUNC0(txc.ds_ctl12, AR_ext_only),
	    FUNC0(txc.ds_ctl12, AR_ext_and_ctl));
	FUNC5("    IsAggr=%d, MoreRifs=%d, LocMode=%d\n",
	    FUNC0(txc.ds_ctl12, AR_is_aggr),
	    FUNC0(txc.ds_ctl12, AR_more_rifs),
	    FUNC0(txc.ds_ctl12, AR_loc_mode));


	/* ctl13 */
	FUNC5("    DurUpEna=%d, Burstdur=0x%04x\n",
	    FUNC0(txc.ds_ctl13, AR_dur_update_ena),
	    FUNC1(txc.ds_ctl13, AR_burst_dur));
	FUNC5("    Try0=%d, Try1=%d, Try2=%d, Try3=%d\n",
	    FUNC1(txc.ds_ctl13, AR_xmit_data_tries0),
	    FUNC1(txc.ds_ctl13, AR_xmit_data_tries1),
	    FUNC1(txc.ds_ctl13, AR_xmit_data_tries2),
	    FUNC1(txc.ds_ctl13, AR_xmit_data_tries3));

	/* ctl14 */
	FUNC5("    rate0=0x%02x, rate1=0x%02x, rate2=0x%02x, rate3=0x%02x\n",
	    FUNC1(txc.ds_ctl14, AR_xmit_rate0),
	    FUNC1(txc.ds_ctl14, AR_xmit_rate1),
	    FUNC1(txc.ds_ctl14, AR_xmit_rate2),
	    FUNC1(txc.ds_ctl14, AR_xmit_rate3));

	/* ctl15 */
	FUNC5("    try 0: PktDur=%d, RTS/CTS ena=%d\n",
	    FUNC1(txc.ds_ctl15, AR_packet_dur0),
	    FUNC0(txc.ds_ctl15, AR_rts_cts_qual0));
	FUNC5("    try 1: PktDur=%d, RTS/CTS ena=%d\n",
	    FUNC1(txc.ds_ctl15, AR_packet_dur1),
	    FUNC0(txc.ds_ctl15, AR_rts_cts_qual1));

	/* ctl16 */
	FUNC5("    try 2: PktDur=%d, RTS/CTS ena=%d\n",
	    FUNC1(txc.ds_ctl16, AR_packet_dur2),
	    FUNC0(txc.ds_ctl16, AR_rts_cts_qual2));
	FUNC5("    try 3: PktDur=%d, RTS/CTS ena=%d\n",
	    FUNC1(txc.ds_ctl16, AR_packet_dur3),
	    FUNC0(txc.ds_ctl16, AR_rts_cts_qual3));

	/* ctl17 */
	FUNC5("    AggrLen=%d, PadDelim=%d, EncrType=%d, TxDcApStaSel=%d\n",
	    FUNC1(txc.ds_ctl17, AR_aggr_len),
	    FUNC1(txc.ds_ctl17, AR_pad_delim),
	    FUNC1(txc.ds_ctl17, AR_encr_type),
	    FUNC0(txc.ds_ctl17, AR_tx_dc_ap_sta_sel));
	FUNC5("    Calib=%d LDPC=%d\n",
	    FUNC0(txc.ds_ctl17, AR_calibrating),
	    FUNC0(txc.ds_ctl17, AR_ldpc));

	/* ctl18 */
	FUNC5("    try 0: chainMask=0x%x, GI=%d, 2040=%d, STBC=%d\n",
	    FUNC1(txc.ds_ctl18, AR_chain_sel0),
	    FUNC0(txc.ds_ctl18, AR_gi0),
	    FUNC0(txc.ds_ctl18, AR_2040_0),
	    FUNC0(txc.ds_ctl18, AR_stbc0));
	FUNC5("    try 1: chainMask=0x%x, GI=%d, 2040=%d, STBC=%d\n",
	    FUNC1(txc.ds_ctl18, AR_chain_sel1),
	    FUNC0(txc.ds_ctl18, AR_gi1),
	    FUNC0(txc.ds_ctl18, AR_2040_1),
	    FUNC0(txc.ds_ctl18, AR_stbc1));
	FUNC5("    try 2: chainMask=0x%x, GI=%d, 2040=%d, STBC=%d\n",
	    FUNC1(txc.ds_ctl18, AR_chain_sel2),
	    FUNC0(txc.ds_ctl18, AR_gi2),
	    FUNC0(txc.ds_ctl18, AR_2040_2),
	    FUNC0(txc.ds_ctl18, AR_stbc2));
	FUNC5("    try 3: chainMask=0x%x, GI=%d, 2040=%d, STBC=%d\n",
	    FUNC1(txc.ds_ctl18, AR_chain_sel3),
	    FUNC0(txc.ds_ctl18, AR_gi3),
	    FUNC0(txc.ds_ctl18, AR_2040_3),
	    FUNC0(txc.ds_ctl18, AR_stbc3));

	/* ctl19 */
	FUNC5("    NotSounding=%d\n",
	    FUNC0(txc.ds_ctl19, AR_not_sounding));

	FUNC5("    try 0: ant=0x%08x, antsel=%d, ness=%d\n",
	    txc.ds_ctl19 &  AR_tx_ant0,
	    FUNC0(txc.ds_ctl19, AR_tx_ant_sel0),
	    FUNC1(txc.ds_ctl19, AR_ness));

	/* ctl20 */
	FUNC5("    try 1: TxPower=%d, ant=0x%08x, antsel=%d, ness=%d\n",
	    FUNC1(txc.ds_ctl20, AR_xmit_power1),
	    txc.ds_ctl20 &  AR_tx_ant1,
	    FUNC0(txc.ds_ctl20, AR_tx_ant_sel1),
	    FUNC1(txc.ds_ctl20, AR_ness1));

	/* ctl21 */
	FUNC5("    try 2: TxPower=%d, ant=0x%08x, antsel=%d, ness=%d\n",
	    FUNC1(txc.ds_ctl21, AR_xmit_power2),
	    txc.ds_ctl21 &  AR_tx_ant2,
	    FUNC0(txc.ds_ctl21, AR_tx_ant_sel2),
	    FUNC1(txc.ds_ctl21, AR_ness2));

	/* ctl22 */
	FUNC5("    try 3: TxPower=%d, ant=0x%08x, antsel=%d, ness=%d\n",
	    FUNC1(txc.ds_ctl22, AR_xmit_power3),
	    txc.ds_ctl22 &  AR_tx_ant3,
	    FUNC0(txc.ds_ctl22, AR_tx_ant_sel3),
	    FUNC1(txc.ds_ctl22, AR_ness3));

	FUNC5("\n ------ \n");
}