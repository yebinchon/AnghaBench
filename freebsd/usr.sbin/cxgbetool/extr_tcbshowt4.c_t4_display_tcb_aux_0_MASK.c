#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  _TCBVAR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int FUNC6 (char*) ; 

void FUNC7 (_TCBVAR *tvp, int aux)
{






  
  FUNC0("STATE:\n");
  FUNC0("  %-12s (%-2u), %s, lock_tid %u, init %u\n",
	      FUNC4(FUNC6("t_state")), 
	      FUNC6("t_state"),
	      FUNC3(FUNC6("ip_version")),
	      FUNC6("lock_tid"),
	      FUNC6("init")
	     );
  FUNC0("  l2t_ix 0x%x, smac sel 0x%x, tos 0x%x\n",
	      FUNC6("l2t_ix"),
	      FUNC6("smac_sel"),
	      FUNC6("tos")
	      );
  FUNC0("  maxseg %u, recv_scaleflag %u, recv_tstmp %u, recv_sack %u\n",
	      FUNC6("t_maxseg"),   FUNC6("recv_scale"),
	      FUNC6("recv_tstmp"), FUNC6("recv_sack"));


  FUNC0("TIMERS:\n"); /* **************************************** */
  FUNC0("  timer    %u,  dack_timer      %u\n", 
	   FUNC6("timer"), FUNC6("dack_timer"));
  FUNC0("  mod_schd: tx: %u, rx: %u, reason 0x%1x\n", 
	      FUNC6("mod_schd_tx"), 
	      FUNC6("mod_schd_rx"),
	      ((FUNC6("mod_schd_reason2")<<2) | (FUNC6("mod_schd_reason1")<<1) |
	       FUNC6("mod_schd_reason0"))
	      );


  FUNC0("  max_rt   %-2u, rxtshift        %u, keepalive   %u\n", 
	   FUNC6("max_rt"),  FUNC6("t_rxtshift"), 
	   FUNC6("keepalive"));
  FUNC0("  timestamp_offset 0x%x,  timestamp 0x%x\n",
	   FUNC6("timestamp_offset"),FUNC6("timestamp"));


  FUNC0("  t_rtt_ts_recent_age %u  t_rttseq_recent %u\n", 
	   FUNC6("t_rtt_ts_recent_age"), FUNC6("t_rtseq_recent"));
  FUNC0("  t_srtt %u, t_rttvar %u\n",
	   FUNC6("t_srtt"),FUNC6("t_rttvar"));






  FUNC0("TRANSMIT BUFFER:\n");   /* *************************** */
  FUNC0("  snd_una %u, snd_nxt %u, snd_max %u, tx_max %u\n",
	      FUNC6("snd_una"),FUNC6("snd_nxt"),
	      FUNC6("snd_max"),FUNC6("tx_max"));
  FUNC0("  core_fin %u, tx_hdr_offset %u\n",  
	      FUNC6("core_fin"), FUNC1(FUNC6("tx_max"),FUNC6("snd_una"))
	     );
  if (FUNC6("recv_scale") && !FUNC6("active_open")) {
    FUNC0("  rcv_adv    %-5u << %-2u == %u (recv_scaleflag %u rcv_scale %u active open %u)\n",
		FUNC6("rcv_adv"), FUNC6("rcv_scale"), 
		FUNC6("rcv_adv") << FUNC6("rcv_scale"), 
		FUNC6("recv_scale"), FUNC6("rcv_scale"), FUNC6("active_open"));
  } else {
    FUNC0("  rcv_adv    %-5u (rcv_scale %-2u recv_scaleflag %u active_open %u)\n",
		FUNC6("rcv_adv"), FUNC6("rcv_scale"), 
		FUNC6("recv_scale"), FUNC6("active_open"));
  }
  
  FUNC0("  snd_cwnd   %-5u  snd_ssthresh %u  snd_rec %u\n",
	      FUNC6("snd_cwnd")    , FUNC6("snd_ssthresh"), FUNC6("snd_rec")
	     );




  FUNC0("  cctrl: sel %s, ecn %u, ece %u, cwr %u, rfr %u\n",
	      FUNC2(FUNC6("cctrl_sel0"),FUNC6("cctrl_sel1")),
	      FUNC6("cctrl_ecn"), FUNC6("cctrl_ece"), FUNC6("cctrl_cwr"),
	      FUNC6("cctrl_rfr"));
  FUNC0("  t_dupacks %u, dupack_count_odd %u, fast_recovery %u\n",
	      FUNC6("t_dupacks"), FUNC6("dupack_count_odd"),FUNC6("fast_recovery"));
  FUNC0("  core_more    %u, core_urg,       %u  core_push   %u,",
	      FUNC6("core_more"),FUNC6("core_urg"),FUNC6("core_push"));
  FUNC0("  core_flush %u\n",FUNC6("core_flush"));
  FUNC0("  nagle        %u, ssws_disable    %u, turbo       %u,",
	      FUNC6("nagle"), FUNC6("ssws_disabled"), FUNC6("turbo"));
  FUNC0("  tx_pdu_out %u\n",FUNC6("tx_pdu_out"));
  FUNC0("  tx_pace_auto %u, tx_pace_fixed   %u, tx_queue    %u",
	      FUNC6("tx_pace_auto"),FUNC6("tx_pace_fixed"),FUNC6("tx_queue"));


  FUNC0("   tx_quiesce %u\n",FUNC6("tx_quiesce"));
  FUNC0("  tx_channel   %u, tx_channel1     %u, tx_channel0 %u\n",
	      FUNC6("tx_channel"),
	      (FUNC6("tx_channel")>>1)&1,
	      FUNC6("tx_channel")&1
	      );




  FUNC0("  tx_hdr_ptr   0x%-6x   tx_last_ptr 0x%-6x  tx_compact %u\n", 
	      FUNC6("tx_hdr_ptr"),FUNC6("tx_last_ptr"),FUNC6("tx_compact"));




  FUNC0("RECEIVE BUFFER:\n");  /* *************************** */
  FUNC0("  last_ack_sent %-10u                      rx_compact %u\n", 
	      FUNC6("ts_last_ack_sent"),FUNC6("rx_compact"));
  FUNC0("  rcv_nxt       %-10u  hdr_off %-10u\n",
	      FUNC6("rcv_nxt"), FUNC6("rx_hdr_offset"));
  FUNC0("  frag0_idx     %-10u  length  %-10u  frag0_ptr  0x%-8x\n", 
	      FUNC6("rx_frag0_start_idx"),
	      FUNC6("rx_frag0_len"),
	      FUNC6("rx_ptr"));
  FUNC0("  frag1_idx     %-10u  length  %-10u  ", 
	      FUNC6("rx_frag1_start_idx_offset"),
	      FUNC6("rx_frag1_len"));




  if (FUNC6("ulp_type")!=4) { /* RDMA has FRAG1 idx && len, but no ptr?  Should I not display frag1 at all? */
    FUNC0("frag1_ptr  0x%-8x\n",FUNC6("rx_frag1_ptr"));
  } else {
    FUNC0("\n");
  }
	      
  
  if (FUNC6("ulp_type") !=6 && FUNC6("ulp_type") != 5 && FUNC6("ulp_type") !=4) {
    FUNC0("  frag2_idx     %-10u  length  %-10u  frag2_ptr  0x%-8x\n", 
		FUNC6("rx_frag2_start_idx_offset"),
		FUNC6("rx_frag2_len"),
		FUNC6("rx_frag2_ptr"));
    FUNC0("  frag3_idx     %-10u  length  %-10u  frag3_ptr  0x%-8x\n", 
		FUNC6("rx_frag3_start_idx_offset"),
		FUNC6("rx_frag3_len"),
		FUNC6("rx_frag3_ptr"));
  }






  FUNC0("  peer_fin %u,   rx_pdu_out %u, pdu_len %u\n",
	      FUNC6("peer_fin"),FUNC6("rx_pdu_out"), FUNC6("pdu_len"));




  if (FUNC6("recv_scale")) {
    FUNC0("  rcv_wnd %u >> snd_scale %u == %u, recv_scaleflag = %u\n",
		FUNC6("rcv_wnd"), FUNC6("snd_scale"), 
		FUNC6("rcv_wnd") >> FUNC6("snd_scale"), 
		FUNC6("recv_scale"));
  } else {
    FUNC0("  rcv_wnd %u.  (snd_scale %u, recv_scaleflag = %u)\n",
		FUNC6("rcv_wnd"), FUNC6("snd_scale"), 
		FUNC6("recv_scale"));
  }




 FUNC0("  dack_mss   %u dack       %u,  dack_not_acked: %u\n", 
	      FUNC6("dack_mss"),FUNC6("dack"),FUNC6("dack_not_acked"));
  FUNC0("  rcv_coal   %u rcv_co_psh %u rcv_co_last_psh  %u heart %u\n",
	      FUNC6("rcv_coalesce_enable"),
	      FUNC6("rcv_coalesce_push"),
	      FUNC6("rcv_coalesce_last_psh"),
	      FUNC6("rcv_coalesce_heartbeat"));
  
  FUNC0("  rx_channel %u rx_quiesce %u rx_flow_ctrl_dis %u,",
	      FUNC6("rx_channel"), FUNC6("rx_quiesce"),
	      FUNC6("rx_flow_control_disable"));
  FUNC0("  rx_flow_ctrl_ddp %u\n",
	      FUNC6("rx_flow_control_ddp"));


  FUNC0("MISCELANEOUS:\n");  /* *************************** */
  FUNC0("  pend_ctl: 0x%1x, unused_flags: 0x%x,  main_slush: 0x%x\n",
	      ((FUNC6("pend_ctl2")<<2) | (FUNC6("pend_ctl1")<<1) | 
	       FUNC6("pend_ctl0")),
	      FUNC6("unused"),FUNC6("main_slush"));
  FUNC0("  Migrating %u, ask_mode %u, non_offload %u, rss_info %u\n",
	      FUNC6("migrating"), 
	      FUNC6("ask_mode"), FUNC6("non_offload"), FUNC6("rss_info"));
  FUNC0("  ULP: ulp_type %u (%s), ulp_raw %u\n",
	      FUNC6("ulp_type"), FUNC5(FUNC6("ulp_type")),FUNC6("ulp_raw"));
  FUNC0("  RDMA: error   %u, flm_err %u\n", 
	      FUNC6("rdma_error"), FUNC6("rdma_flm_error"));


}