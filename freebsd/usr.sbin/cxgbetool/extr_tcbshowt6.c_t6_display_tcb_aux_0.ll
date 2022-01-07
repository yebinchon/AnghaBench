; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/cxgbetool/extr_tcbshowt6.c_t6_display_tcb_aux_0.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/cxgbetool/extr_tcbshowt6.c_t6_display_tcb_aux_0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [8 x i8] c"STATE:\0A\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"  %-12s (%-2u), %s, lock_tid %u, rss_fw %u\0A\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"t_state\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"ip_version\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"lock_tid\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"rss_fw\00", align 1
@.str.6 = private unnamed_addr constant [40 x i8] c"  l2t_ix 0x%x, smac sel 0x%x, tos 0x%x\0A\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"l2t_ix\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"smac_sel\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"tos\00", align 1
@.str.10 = private unnamed_addr constant [61 x i8] c"  maxseg %u, recv_scaleflag %u, recv_tstmp %u, recv_sack %u\0A\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"t_maxseg\00", align 1
@.str.12 = private unnamed_addr constant [11 x i8] c"recv_scale\00", align 1
@.str.13 = private unnamed_addr constant [11 x i8] c"recv_tstmp\00", align 1
@.str.14 = private unnamed_addr constant [10 x i8] c"recv_sack\00", align 1
@.str.15 = private unnamed_addr constant [9 x i8] c"TIMERS:\0A\00", align 1
@.str.16 = private unnamed_addr constant [36 x i8] c"  timer    %u,  dack_timer      %u\0A\00", align 1
@.str.17 = private unnamed_addr constant [6 x i8] c"timer\00", align 1
@.str.18 = private unnamed_addr constant [11 x i8] c"dack_timer\00", align 1
@.str.19 = private unnamed_addr constant [42 x i8] c"  mod_schd: tx: %u, rx: %u, reason 0x%1x\0A\00", align 1
@.str.20 = private unnamed_addr constant [12 x i8] c"mod_schd_tx\00", align 1
@.str.21 = private unnamed_addr constant [12 x i8] c"mod_schd_rx\00", align 1
@.str.22 = private unnamed_addr constant [17 x i8] c"mod_schd_reason2\00", align 1
@.str.23 = private unnamed_addr constant [17 x i8] c"mod_schd_reason1\00", align 1
@.str.24 = private unnamed_addr constant [17 x i8] c"mod_schd_reason0\00", align 1
@.str.25 = private unnamed_addr constant [53 x i8] c"  max_rt   %-2u, rxtshift        %u, keepalive   %u\0A\00", align 1
@.str.26 = private unnamed_addr constant [7 x i8] c"max_rt\00", align 1
@.str.27 = private unnamed_addr constant [11 x i8] c"t_rxtshift\00", align 1
@.str.28 = private unnamed_addr constant [10 x i8] c"keepalive\00", align 1
@.str.29 = private unnamed_addr constant [42 x i8] c"  timestamp_offset 0x%x,  timestamp 0x%x\0A\00", align 1
@.str.30 = private unnamed_addr constant [17 x i8] c"timestamp_offset\00", align 1
@.str.31 = private unnamed_addr constant [10 x i8] c"timestamp\00", align 1
@.str.32 = private unnamed_addr constant [46 x i8] c"  t_rtt_ts_recent_age %u  t_rttseq_recent %u\0A\00", align 1
@.str.33 = private unnamed_addr constant [20 x i8] c"t_rtt_ts_recent_age\00", align 1
@.str.34 = private unnamed_addr constant [15 x i8] c"t_rtseq_recent\00", align 1
@.str.35 = private unnamed_addr constant [26 x i8] c"  t_srtt %u, t_rttvar %u\0A\00", align 1
@.str.36 = private unnamed_addr constant [7 x i8] c"t_srtt\00", align 1
@.str.37 = private unnamed_addr constant [9 x i8] c"t_rttvar\00", align 1
@.str.38 = private unnamed_addr constant [18 x i8] c"TRANSMIT BUFFER:\0A\00", align 1
@.str.39 = private unnamed_addr constant [49 x i8] c"  snd_una %u, snd_nxt %u, snd_max %u, tx_max %u\0A\00", align 1
@.str.40 = private unnamed_addr constant [8 x i8] c"snd_una\00", align 1
@.str.41 = private unnamed_addr constant [8 x i8] c"snd_nxt\00", align 1
@.str.42 = private unnamed_addr constant [8 x i8] c"snd_max\00", align 1
@.str.43 = private unnamed_addr constant [7 x i8] c"tx_max\00", align 1
@.str.44 = private unnamed_addr constant [33 x i8] c"  core_fin %u, tx_hdr_offset %u\0A\00", align 1
@.str.45 = private unnamed_addr constant [9 x i8] c"core_fin\00", align 1
@.str.46 = private unnamed_addr constant [12 x i8] c"active_open\00", align 1
@.str.47 = private unnamed_addr constant [81 x i8] c"  rcv_adv    %-5u << %-2u == %u (recv_scaleflag %u rcv_scale %u active open %u)\0A\00", align 1
@.str.48 = private unnamed_addr constant [8 x i8] c"rcv_adv\00", align 1
@.str.49 = private unnamed_addr constant [10 x i8] c"rcv_scale\00", align 1
@.str.50 = private unnamed_addr constant [69 x i8] c"  rcv_adv    %-5u (rcv_scale %-2u recv_scaleflag %u active_open %u)\0A\00", align 1
@.str.51 = private unnamed_addr constant [48 x i8] c"  snd_cwnd   %-5u  snd_ssthresh %u  snd_rec %u\0A\00", align 1
@.str.52 = private unnamed_addr constant [9 x i8] c"snd_cwnd\00", align 1
@.str.53 = private unnamed_addr constant [13 x i8] c"snd_ssthresh\00", align 1
@.str.54 = private unnamed_addr constant [8 x i8] c"snd_rec\00", align 1
@.str.55 = private unnamed_addr constant [49 x i8] c"  cctrl: sel %s, ecn %u, ece %u, cwr %u, rfr %u\0A\00", align 1
@.str.56 = private unnamed_addr constant [11 x i8] c"cctrl_sel0\00", align 1
@.str.57 = private unnamed_addr constant [11 x i8] c"cctrl_sel1\00", align 1
@.str.58 = private unnamed_addr constant [10 x i8] c"cctrl_ecn\00", align 1
@.str.59 = private unnamed_addr constant [10 x i8] c"cctrl_ece\00", align 1
@.str.60 = private unnamed_addr constant [10 x i8] c"cctrl_cwr\00", align 1
@.str.61 = private unnamed_addr constant [10 x i8] c"cctrl_rfr\00", align 1
@.str.62 = private unnamed_addr constant [55 x i8] c"  t_dupacks %u, dupack_count_odd %u, fast_recovery %u\0A\00", align 1
@.str.63 = private unnamed_addr constant [10 x i8] c"t_dupacks\00", align 1
@.str.64 = private unnamed_addr constant [17 x i8] c"dupack_count_odd\00", align 1
@.str.65 = private unnamed_addr constant [14 x i8] c"fast_recovery\00", align 1
@.str.66 = private unnamed_addr constant [55 x i8] c"  core_more    %u, core_urg,       %u  core_push   %u,\00", align 1
@.str.67 = private unnamed_addr constant [10 x i8] c"core_more\00", align 1
@.str.68 = private unnamed_addr constant [9 x i8] c"core_urg\00", align 1
@.str.69 = private unnamed_addr constant [10 x i8] c"core_push\00", align 1
@.str.70 = private unnamed_addr constant [17 x i8] c"  core_flush %u\0A\00", align 1
@.str.71 = private unnamed_addr constant [11 x i8] c"core_flush\00", align 1
@.str.72 = private unnamed_addr constant [55 x i8] c"  nagle        %u, ssws_disable    %u, turbo       %u,\00", align 1
@.str.73 = private unnamed_addr constant [6 x i8] c"nagle\00", align 1
@.str.74 = private unnamed_addr constant [14 x i8] c"ssws_disabled\00", align 1
@.str.75 = private unnamed_addr constant [6 x i8] c"turbo\00", align 1
@.str.76 = private unnamed_addr constant [17 x i8] c"  tx_pdu_out %u\0A\00", align 1
@.str.77 = private unnamed_addr constant [11 x i8] c"tx_pdu_out\00", align 1
@.str.78 = private unnamed_addr constant [54 x i8] c"  tx_pace_auto %u, tx_pace_fixed   %u, tx_queue    %u\00", align 1
@.str.79 = private unnamed_addr constant [13 x i8] c"tx_pace_auto\00", align 1
@.str.80 = private unnamed_addr constant [14 x i8] c"tx_pace_fixed\00", align 1
@.str.81 = private unnamed_addr constant [9 x i8] c"tx_queue\00", align 1
@.str.82 = private unnamed_addr constant [18 x i8] c"   tx_quiesce %u\0A\00", align 1
@.str.83 = private unnamed_addr constant [11 x i8] c"tx_quiesce\00", align 1
@.str.84 = private unnamed_addr constant [55 x i8] c"  tx_channel   %u, tx_channel1     %u, tx_channel0 %u\0A\00", align 1
@.str.85 = private unnamed_addr constant [11 x i8] c"tx_channel\00", align 1
@.str.86 = private unnamed_addr constant [59 x i8] c"  tx_hdr_ptr   0x%-6x   tx_last_ptr 0x%-6x  tx_compact %u\0A\00", align 1
@.str.87 = private unnamed_addr constant [11 x i8] c"tx_hdr_ptr\00", align 1
@.str.88 = private unnamed_addr constant [12 x i8] c"tx_last_ptr\00", align 1
@.str.89 = private unnamed_addr constant [11 x i8] c"tx_compact\00", align 1
@.str.90 = private unnamed_addr constant [17 x i8] c"RECEIVE BUFFER:\0A\00", align 1
@.str.91 = private unnamed_addr constant [58 x i8] c"  last_ack_sent %-10u                      rx_compact %u\0A\00", align 1
@.str.92 = private unnamed_addr constant [17 x i8] c"ts_last_ack_sent\00", align 1
@.str.93 = private unnamed_addr constant [11 x i8] c"rx_compact\00", align 1
@.str.94 = private unnamed_addr constant [38 x i8] c"  rcv_nxt       %-10u  hdr_off %-10u\0A\00", align 1
@.str.95 = private unnamed_addr constant [8 x i8] c"rcv_nxt\00", align 1
@.str.96 = private unnamed_addr constant [14 x i8] c"rx_hdr_offset\00", align 1
@.str.97 = private unnamed_addr constant [57 x i8] c"  frag0_idx     %-10u  length  %-10u  frag0_ptr  0x%-8x\0A\00", align 1
@.str.98 = private unnamed_addr constant [19 x i8] c"rx_frag0_start_idx\00", align 1
@.str.99 = private unnamed_addr constant [13 x i8] c"rx_frag0_len\00", align 1
@.str.100 = private unnamed_addr constant [7 x i8] c"rx_ptr\00", align 1
@.str.101 = private unnamed_addr constant [39 x i8] c"  frag1_idx     %-10u  length  %-10u  \00", align 1
@.str.102 = private unnamed_addr constant [26 x i8] c"rx_frag1_start_idx_offset\00", align 1
@.str.103 = private unnamed_addr constant [13 x i8] c"rx_frag1_len\00", align 1
@.str.104 = private unnamed_addr constant [9 x i8] c"ulp_type\00", align 1
@.str.105 = private unnamed_addr constant [19 x i8] c"frag1_ptr  0x%-8x\0A\00", align 1
@.str.106 = private unnamed_addr constant [13 x i8] c"rx_frag1_ptr\00", align 1
@.str.107 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.108 = private unnamed_addr constant [57 x i8] c"  frag2_idx     %-10u  length  %-10u  frag2_ptr  0x%-8x\0A\00", align 1
@.str.109 = private unnamed_addr constant [26 x i8] c"rx_frag2_start_idx_offset\00", align 1
@.str.110 = private unnamed_addr constant [13 x i8] c"rx_frag2_len\00", align 1
@.str.111 = private unnamed_addr constant [13 x i8] c"rx_frag2_ptr\00", align 1
@.str.112 = private unnamed_addr constant [57 x i8] c"  frag3_idx     %-10u  length  %-10u  frag3_ptr  0x%-8x\0A\00", align 1
@.str.113 = private unnamed_addr constant [26 x i8] c"rx_frag3_start_idx_offset\00", align 1
@.str.114 = private unnamed_addr constant [13 x i8] c"rx_frag3_len\00", align 1
@.str.115 = private unnamed_addr constant [13 x i8] c"rx_frag3_ptr\00", align 1
@.str.116 = private unnamed_addr constant [44 x i8] c"  peer_fin %u,   rx_pdu_out %u, pdu_len %u\0A\00", align 1
@.str.117 = private unnamed_addr constant [9 x i8] c"peer_fin\00", align 1
@.str.118 = private unnamed_addr constant [11 x i8] c"rx_pdu_out\00", align 1
@.str.119 = private unnamed_addr constant [8 x i8] c"pdu_len\00", align 1
@.str.120 = private unnamed_addr constant [57 x i8] c"  rcv_wnd %u >> snd_scale %u == %u, recv_scaleflag = %u\0A\00", align 1
@.str.121 = private unnamed_addr constant [8 x i8] c"rcv_wnd\00", align 1
@.str.122 = private unnamed_addr constant [10 x i8] c"snd_scale\00", align 1
@.str.123 = private unnamed_addr constant [52 x i8] c"  rcv_wnd %u.  (snd_scale %u, recv_scaleflag = %u)\0A\00", align 1
@.str.124 = private unnamed_addr constant [52 x i8] c"  dack_mss   %u dack       %u,  dack_not_acked: %u\0A\00", align 1
@.str.125 = private unnamed_addr constant [9 x i8] c"dack_mss\00", align 1
@.str.126 = private unnamed_addr constant [5 x i8] c"dack\00", align 1
@.str.127 = private unnamed_addr constant [15 x i8] c"dack_not_acked\00", align 1
@.str.128 = private unnamed_addr constant [60 x i8] c"  rcv_coal   %u rcv_co_psh %u rcv_co_last_psh  %u heart %u\0A\00", align 1
@.str.129 = private unnamed_addr constant [20 x i8] c"rcv_coalesce_enable\00", align 1
@.str.130 = private unnamed_addr constant [18 x i8] c"rcv_coalesce_push\00", align 1
@.str.131 = private unnamed_addr constant [22 x i8] c"rcv_coalesce_last_psh\00", align 1
@.str.132 = private unnamed_addr constant [23 x i8] c"rcv_coalesce_heartbeat\00", align 1
@.str.133 = private unnamed_addr constant [51 x i8] c"  rx_channel %u rx_quiesce %u rx_flow_ctrl_dis %u,\00", align 1
@.str.134 = private unnamed_addr constant [11 x i8] c"rx_channel\00", align 1
@.str.135 = private unnamed_addr constant [11 x i8] c"rx_quiesce\00", align 1
@.str.136 = private unnamed_addr constant [24 x i8] c"rx_flow_control_disable\00", align 1
@.str.137 = private unnamed_addr constant [23 x i8] c"  rx_flow_ctrl_ddp %u\0A\00", align 1
@.str.138 = private unnamed_addr constant [20 x i8] c"rx_flow_control_ddp\00", align 1
@.str.139 = private unnamed_addr constant [15 x i8] c"MISCELANEOUS:\0A\00", align 1
@.str.140 = private unnamed_addr constant [57 x i8] c"  pend_ctl: 0x%1x, core_bypass: 0x%x,  main_slush: 0x%x\0A\00", align 1
@.str.141 = private unnamed_addr constant [10 x i8] c"pend_ctl2\00", align 1
@.str.142 = private unnamed_addr constant [10 x i8] c"pend_ctl1\00", align 1
@.str.143 = private unnamed_addr constant [10 x i8] c"pend_ctl0\00", align 1
@.str.144 = private unnamed_addr constant [12 x i8] c"core_bypass\00", align 1
@.str.145 = private unnamed_addr constant [11 x i8] c"main_slush\00", align 1
@.str.146 = private unnamed_addr constant [58 x i8] c"  Migrating %u, ask_mode %u, non_offload %u, rss_info %u\0A\00", align 1
@.str.147 = private unnamed_addr constant [10 x i8] c"migrating\00", align 1
@.str.148 = private unnamed_addr constant [9 x i8] c"ask_mode\00", align 1
@.str.149 = private unnamed_addr constant [12 x i8] c"non_offload\00", align 1
@.str.150 = private unnamed_addr constant [9 x i8] c"rss_info\00", align 1
@.str.151 = private unnamed_addr constant [36 x i8] c"  ULP: ulp_type %u (%s), ulp_raw %u\00", align 1
@.str.152 = private unnamed_addr constant [8 x i8] c"ulp_raw\00", align 1
@.str.153 = private unnamed_addr constant [14 x i8] c",  ulp_ext %u\00", align 1
@.str.154 = private unnamed_addr constant [8 x i8] c"ulp_ext\00", align 1
@.str.155 = private unnamed_addr constant [32 x i8] c"  RDMA: error   %u, flm_err %u\0A\00", align 1
@.str.156 = private unnamed_addr constant [11 x i8] c"rdma_error\00", align 1
@.str.157 = private unnamed_addr constant [15 x i8] c"rdma_flm_error\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @t6_display_tcb_aux_0(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = call i32 (i8*, ...) @PR(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %6 = call i32 @val(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %7 = call i32 @spr_tcp_state(i32 %6)
  %8 = call i32 @val(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %9 = call i32 @val(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  %10 = call i32 @spr_ip_version(i32 %9)
  %11 = call i32 @val(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  %12 = call i32 @val(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0))
  %13 = call i32 (i8*, ...) @PR(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32 %7, i32 %8, i32 %10, i32 %11, i32 %12)
  %14 = call i32 @val(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0))
  %15 = call i32 @val(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0))
  %16 = call i32 @val(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0))
  %17 = call i32 (i8*, ...) @PR(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.6, i64 0, i64 0), i32 %14, i32 %15, i32 %16)
  %18 = call i32 @val(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i64 0, i64 0))
  %19 = call i32 @val(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i64 0, i64 0))
  %20 = call i32 @val(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i64 0, i64 0))
  %21 = call i32 @val(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i64 0, i64 0))
  %22 = call i32 (i8*, ...) @PR(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.10, i64 0, i64 0), i32 %18, i32 %19, i32 %20, i32 %21)
  %23 = call i32 (i8*, ...) @PR(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i64 0, i64 0))
  %24 = call i32 @val(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i64 0, i64 0))
  %25 = call i32 @val(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.18, i64 0, i64 0))
  %26 = call i32 (i8*, ...) @PR(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.16, i64 0, i64 0), i32 %24, i32 %25)
  %27 = call i32 @val(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.20, i64 0, i64 0))
  %28 = call i32 @val(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.21, i64 0, i64 0))
  %29 = call i32 @val(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.22, i64 0, i64 0))
  %30 = shl i32 %29, 2
  %31 = call i32 @val(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.23, i64 0, i64 0))
  %32 = shl i32 %31, 1
  %33 = or i32 %30, %32
  %34 = call i32 @val(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i64 0, i64 0))
  %35 = or i32 %33, %34
  %36 = call i32 (i8*, ...) @PR(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.19, i64 0, i64 0), i32 %27, i32 %28, i32 %35)
  %37 = call i32 @val(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.26, i64 0, i64 0))
  %38 = call i32 @val(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.27, i64 0, i64 0))
  %39 = call i32 @val(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.28, i64 0, i64 0))
  %40 = call i32 (i8*, ...) @PR(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.25, i64 0, i64 0), i32 %37, i32 %38, i32 %39)
  %41 = call i32 @val(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.30, i64 0, i64 0))
  %42 = call i32 @val(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.31, i64 0, i64 0))
  %43 = call i32 (i8*, ...) @PR(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.29, i64 0, i64 0), i32 %41, i32 %42)
  %44 = call i32 @val(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.33, i64 0, i64 0))
  %45 = call i32 @val(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.34, i64 0, i64 0))
  %46 = call i32 (i8*, ...) @PR(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.32, i64 0, i64 0), i32 %44, i32 %45)
  %47 = call i32 @val(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.36, i64 0, i64 0))
  %48 = call i32 @val(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.37, i64 0, i64 0))
  %49 = call i32 (i8*, ...) @PR(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.35, i64 0, i64 0), i32 %47, i32 %48)
  %50 = call i32 (i8*, ...) @PR(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.38, i64 0, i64 0))
  %51 = call i32 @val(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.40, i64 0, i64 0))
  %52 = call i32 @val(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.41, i64 0, i64 0))
  %53 = call i32 @val(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.42, i64 0, i64 0))
  %54 = call i32 @val(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.43, i64 0, i64 0))
  %55 = call i32 (i8*, ...) @PR(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.39, i64 0, i64 0), i32 %51, i32 %52, i32 %53, i32 %54)
  %56 = call i32 @val(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.45, i64 0, i64 0))
  %57 = call i32 @val(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.43, i64 0, i64 0))
  %58 = call i32 @val(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.40, i64 0, i64 0))
  %59 = call i32 @SEQ_SUB(i32 %57, i32 %58)
  %60 = call i32 (i8*, ...) @PR(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.44, i64 0, i64 0), i32 %56, i32 %59)
  %61 = call i32 @val(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i64 0, i64 0))
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %76

63:                                               ; preds = %2
  %64 = call i32 @val(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.46, i64 0, i64 0))
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %76, label %66

66:                                               ; preds = %63
  %67 = call i32 @val(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.48, i64 0, i64 0))
  %68 = call i32 @val(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.49, i64 0, i64 0))
  %69 = call i32 @val(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.48, i64 0, i64 0))
  %70 = call i32 @val(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.49, i64 0, i64 0))
  %71 = shl i32 %69, %70
  %72 = call i32 @val(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i64 0, i64 0))
  %73 = call i32 @val(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.49, i64 0, i64 0))
  %74 = call i32 @val(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.46, i64 0, i64 0))
  %75 = call i32 (i8*, ...) @PR(i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.47, i64 0, i64 0), i32 %67, i32 %68, i32 %71, i32 %72, i32 %73, i32 %74)
  br label %82

76:                                               ; preds = %63, %2
  %77 = call i32 @val(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.48, i64 0, i64 0))
  %78 = call i32 @val(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.49, i64 0, i64 0))
  %79 = call i32 @val(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i64 0, i64 0))
  %80 = call i32 @val(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.46, i64 0, i64 0))
  %81 = call i32 (i8*, ...) @PR(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.50, i64 0, i64 0), i32 %77, i32 %78, i32 %79, i32 %80)
  br label %82

82:                                               ; preds = %76, %66
  %83 = call i32 @val(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.52, i64 0, i64 0))
  %84 = call i32 @val(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.53, i64 0, i64 0))
  %85 = call i32 @val(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.54, i64 0, i64 0))
  %86 = call i32 (i8*, ...) @PR(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.51, i64 0, i64 0), i32 %83, i32 %84, i32 %85)
  %87 = call i32 @val(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.56, i64 0, i64 0))
  %88 = call i32 @val(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.57, i64 0, i64 0))
  %89 = call i32 @spr_cctrl_sel(i32 %87, i32 %88)
  %90 = call i32 @val(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.58, i64 0, i64 0))
  %91 = call i32 @val(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.59, i64 0, i64 0))
  %92 = call i32 @val(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.60, i64 0, i64 0))
  %93 = call i32 @val(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.61, i64 0, i64 0))
  %94 = call i32 (i8*, ...) @PR(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.55, i64 0, i64 0), i32 %89, i32 %90, i32 %91, i32 %92, i32 %93)
  %95 = call i32 @val(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.63, i64 0, i64 0))
  %96 = call i32 @val(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.64, i64 0, i64 0))
  %97 = call i32 @val(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.65, i64 0, i64 0))
  %98 = call i32 (i8*, ...) @PR(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.62, i64 0, i64 0), i32 %95, i32 %96, i32 %97)
  %99 = call i32 @val(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.67, i64 0, i64 0))
  %100 = call i32 @val(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.68, i64 0, i64 0))
  %101 = call i32 @val(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.69, i64 0, i64 0))
  %102 = call i32 (i8*, ...) @PR(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.66, i64 0, i64 0), i32 %99, i32 %100, i32 %101)
  %103 = call i32 @val(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.71, i64 0, i64 0))
  %104 = call i32 (i8*, ...) @PR(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.70, i64 0, i64 0), i32 %103)
  %105 = call i32 @val(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.73, i64 0, i64 0))
  %106 = call i32 @val(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.74, i64 0, i64 0))
  %107 = call i32 @val(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.75, i64 0, i64 0))
  %108 = call i32 (i8*, ...) @PR(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.72, i64 0, i64 0), i32 %105, i32 %106, i32 %107)
  %109 = call i32 @val(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.77, i64 0, i64 0))
  %110 = call i32 (i8*, ...) @PR(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.76, i64 0, i64 0), i32 %109)
  %111 = call i32 @val(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.79, i64 0, i64 0))
  %112 = call i32 @val(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.80, i64 0, i64 0))
  %113 = call i32 @val(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.81, i64 0, i64 0))
  %114 = call i32 (i8*, ...) @PR(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.78, i64 0, i64 0), i32 %111, i32 %112, i32 %113)
  %115 = call i32 @val(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.83, i64 0, i64 0))
  %116 = call i32 (i8*, ...) @PR(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.82, i64 0, i64 0), i32 %115)
  %117 = call i32 @val(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.85, i64 0, i64 0))
  %118 = call i32 @val(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.85, i64 0, i64 0))
  %119 = ashr i32 %118, 1
  %120 = and i32 %119, 1
  %121 = call i32 @val(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.85, i64 0, i64 0))
  %122 = and i32 %121, 1
  %123 = call i32 (i8*, ...) @PR(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.84, i64 0, i64 0), i32 %117, i32 %120, i32 %122)
  %124 = call i32 @val(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.87, i64 0, i64 0))
  %125 = call i32 @val(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.88, i64 0, i64 0))
  %126 = call i32 @val(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.89, i64 0, i64 0))
  %127 = call i32 (i8*, ...) @PR(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.86, i64 0, i64 0), i32 %124, i32 %125, i32 %126)
  %128 = call i32 (i8*, ...) @PR(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.90, i64 0, i64 0))
  %129 = call i32 @val(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.92, i64 0, i64 0))
  %130 = call i32 @val(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.93, i64 0, i64 0))
  %131 = call i32 (i8*, ...) @PR(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.91, i64 0, i64 0), i32 %129, i32 %130)
  %132 = call i32 @val(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.95, i64 0, i64 0))
  %133 = call i32 @val(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.96, i64 0, i64 0))
  %134 = call i32 (i8*, ...) @PR(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.94, i64 0, i64 0), i32 %132, i32 %133)
  %135 = call i32 @val(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.98, i64 0, i64 0))
  %136 = call i32 @val(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.99, i64 0, i64 0))
  %137 = call i32 @val(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.100, i64 0, i64 0))
  %138 = call i32 (i8*, ...) @PR(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.97, i64 0, i64 0), i32 %135, i32 %136, i32 %137)
  %139 = call i32 @val(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.102, i64 0, i64 0))
  %140 = call i32 @val(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.103, i64 0, i64 0))
  %141 = call i32 (i8*, ...) @PR(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.101, i64 0, i64 0), i32 %139, i32 %140)
  %142 = call i32 @val(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.104, i64 0, i64 0))
  %143 = icmp ne i32 %142, 4
  br i1 %143, label %144, label %147

144:                                              ; preds = %82
  %145 = call i32 @val(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.106, i64 0, i64 0))
  %146 = call i32 (i8*, ...) @PR(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.105, i64 0, i64 0), i32 %145)
  br label %149

147:                                              ; preds = %82
  %148 = call i32 (i8*, ...) @PR(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.107, i64 0, i64 0))
  br label %149

149:                                              ; preds = %147, %144
  %150 = call i32 @val(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.104, i64 0, i64 0))
  %151 = icmp ne i32 %150, 9
  br i1 %151, label %152, label %173

152:                                              ; preds = %149
  %153 = call i32 @val(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.104, i64 0, i64 0))
  %154 = icmp ne i32 %153, 8
  br i1 %154, label %155, label %173

155:                                              ; preds = %152
  %156 = call i32 @val(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.104, i64 0, i64 0))
  %157 = icmp ne i32 %156, 6
  br i1 %157, label %158, label %173

158:                                              ; preds = %155
  %159 = call i32 @val(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.104, i64 0, i64 0))
  %160 = icmp ne i32 %159, 5
  br i1 %160, label %161, label %173

161:                                              ; preds = %158
  %162 = call i32 @val(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.104, i64 0, i64 0))
  %163 = icmp ne i32 %162, 4
  br i1 %163, label %164, label %173

164:                                              ; preds = %161
  %165 = call i32 @val(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.109, i64 0, i64 0))
  %166 = call i32 @val(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.110, i64 0, i64 0))
  %167 = call i32 @val(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.111, i64 0, i64 0))
  %168 = call i32 (i8*, ...) @PR(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.108, i64 0, i64 0), i32 %165, i32 %166, i32 %167)
  %169 = call i32 @val(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.113, i64 0, i64 0))
  %170 = call i32 @val(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.114, i64 0, i64 0))
  %171 = call i32 @val(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.115, i64 0, i64 0))
  %172 = call i32 (i8*, ...) @PR(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.112, i64 0, i64 0), i32 %169, i32 %170, i32 %171)
  br label %173

173:                                              ; preds = %164, %161, %158, %155, %152, %149
  %174 = call i32 @val(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.117, i64 0, i64 0))
  %175 = call i32 @val(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.118, i64 0, i64 0))
  %176 = call i32 @val(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.119, i64 0, i64 0))
  %177 = call i32 (i8*, ...) @PR(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.116, i64 0, i64 0), i32 %174, i32 %175, i32 %176)
  %178 = call i32 @val(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i64 0, i64 0))
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %188

180:                                              ; preds = %173
  %181 = call i32 @val(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.121, i64 0, i64 0))
  %182 = call i32 @val(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.122, i64 0, i64 0))
  %183 = call i32 @val(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.121, i64 0, i64 0))
  %184 = call i32 @val(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.122, i64 0, i64 0))
  %185 = ashr i32 %183, %184
  %186 = call i32 @val(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i64 0, i64 0))
  %187 = call i32 (i8*, ...) @PR(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.120, i64 0, i64 0), i32 %181, i32 %182, i32 %185, i32 %186)
  br label %193

188:                                              ; preds = %173
  %189 = call i32 @val(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.121, i64 0, i64 0))
  %190 = call i32 @val(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.122, i64 0, i64 0))
  %191 = call i32 @val(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i64 0, i64 0))
  %192 = call i32 (i8*, ...) @PR(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.123, i64 0, i64 0), i32 %189, i32 %190, i32 %191)
  br label %193

193:                                              ; preds = %188, %180
  %194 = call i32 @val(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.125, i64 0, i64 0))
  %195 = call i32 @val(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.126, i64 0, i64 0))
  %196 = call i32 @val(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.127, i64 0, i64 0))
  %197 = call i32 (i8*, ...) @PR(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.124, i64 0, i64 0), i32 %194, i32 %195, i32 %196)
  %198 = call i32 @val(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.129, i64 0, i64 0))
  %199 = call i32 @val(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.130, i64 0, i64 0))
  %200 = call i32 @val(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.131, i64 0, i64 0))
  %201 = call i32 @val(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.132, i64 0, i64 0))
  %202 = call i32 (i8*, ...) @PR(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.128, i64 0, i64 0), i32 %198, i32 %199, i32 %200, i32 %201)
  %203 = call i32 @val(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.134, i64 0, i64 0))
  %204 = call i32 @val(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.135, i64 0, i64 0))
  %205 = call i32 @val(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.136, i64 0, i64 0))
  %206 = call i32 (i8*, ...) @PR(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.133, i64 0, i64 0), i32 %203, i32 %204, i32 %205)
  %207 = call i32 @val(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.138, i64 0, i64 0))
  %208 = call i32 (i8*, ...) @PR(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.137, i64 0, i64 0), i32 %207)
  %209 = call i32 (i8*, ...) @PR(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.139, i64 0, i64 0))
  %210 = call i32 @val(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.141, i64 0, i64 0))
  %211 = shl i32 %210, 2
  %212 = call i32 @val(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.142, i64 0, i64 0))
  %213 = shl i32 %212, 1
  %214 = or i32 %211, %213
  %215 = call i32 @val(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.143, i64 0, i64 0))
  %216 = or i32 %214, %215
  %217 = call i32 @val(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.144, i64 0, i64 0))
  %218 = call i32 @val(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.145, i64 0, i64 0))
  %219 = call i32 (i8*, ...) @PR(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.140, i64 0, i64 0), i32 %216, i32 %217, i32 %218)
  %220 = call i32 @val(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.147, i64 0, i64 0))
  %221 = call i32 @val(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.148, i64 0, i64 0))
  %222 = call i32 @val(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.149, i64 0, i64 0))
  %223 = call i32 @val(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.150, i64 0, i64 0))
  %224 = call i32 (i8*, ...) @PR(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.146, i64 0, i64 0), i32 %220, i32 %221, i32 %222, i32 %223)
  %225 = call i32 @val(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.104, i64 0, i64 0))
  %226 = call i32 @val(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.104, i64 0, i64 0))
  %227 = call i32 @spr_ulp_type(i32 %226)
  %228 = call i32 @val(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.152, i64 0, i64 0))
  %229 = call i32 (i8*, ...) @PR(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.151, i64 0, i64 0), i32 %225, i32 %227, i32 %228)
  %230 = load i32, i32* %4, align 4
  %231 = icmp eq i32 %230, 1
  br i1 %231, label %232, label %235

232:                                              ; preds = %193
  %233 = call i32 @val(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.154, i64 0, i64 0))
  %234 = call i32 (i8*, ...) @PR(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.153, i64 0, i64 0), i32 %233)
  br label %235

235:                                              ; preds = %232, %193
  %236 = call i32 (i8*, ...) @PR(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.107, i64 0, i64 0))
  %237 = call i32 @val(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.156, i64 0, i64 0))
  %238 = call i32 @val(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.157, i64 0, i64 0))
  %239 = call i32 (i8*, ...) @PR(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.155, i64 0, i64 0), i32 %237, i32 %238)
  ret void
}

declare dso_local i32 @PR(i8*, ...) #1

declare dso_local i32 @spr_tcp_state(i32) #1

declare dso_local i32 @val(i8*) #1

declare dso_local i32 @spr_ip_version(i32) #1

declare dso_local i32 @SEQ_SUB(i32, i32) #1

declare dso_local i32 @spr_cctrl_sel(i32, i32) #1

declare dso_local i32 @spr_ulp_type(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
