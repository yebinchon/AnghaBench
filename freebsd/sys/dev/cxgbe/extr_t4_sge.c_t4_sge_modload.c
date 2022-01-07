
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CPL_COOKIE_ETHOFLD ;
 int CPL_FW4_ACK ;
 int CPL_FW4_MSG ;
 int CPL_FW6_MSG ;
 int CPL_RX_PKT ;
 int CPL_SGE_EGR_UPDATE ;
 int FW6_TYPE_CMD_RPL ;
 int FW6_TYPE_WRERR_RPL ;
 int M_WAITOK ;
 int cong_drop ;
 int counter_u64_alloc (int ) ;
 int counter_u64_zero (int ) ;
 int cpu_clflush_line_size ;
 int ethofld_fw4_ack ;
 int extfree_refs ;
 int extfree_rels ;
 int fl_pktshift ;
 int handle_fw_msg ;
 int handle_sge_egr_update ;
 int printf (char*,int,...) ;
 int spg_len ;
 int t4_eth_rx ;
 int t4_handle_fw_rpl ;
 int t4_handle_wrerr_rpl ;
 int t4_init_shared_cpl_handlers () ;
 int t4_register_cpl_handler (int ,int ) ;
 int t4_register_fw_msg_handler (int ,int ) ;
 int t4_register_shared_cpl_handler (int ,int ,int ) ;
 int tscale ;

void
t4_sge_modload(void)
{

 if (fl_pktshift < 0 || fl_pktshift > 7) {
  printf("Invalid hw.cxgbe.fl_pktshift value (%d),"
      " using 0 instead.\n", fl_pktshift);
  fl_pktshift = 0;
 }

 if (spg_len != 64 && spg_len != 128) {
  int len;


  len = cpu_clflush_line_size > 64 ? 128 : 64;



  if (spg_len != -1) {
   printf("Invalid hw.cxgbe.spg_len value (%d),"
       " using %d instead.\n", spg_len, len);
  }
  spg_len = len;
 }

 if (cong_drop < -1 || cong_drop > 1) {
  printf("Invalid hw.cxgbe.cong_drop value (%d),"
      " using 0 instead.\n", cong_drop);
  cong_drop = 0;
 }

 if (tscale != 1 && (tscale < 3 || tscale > 17)) {
  printf("Invalid hw.cxgbe.tscale value (%d),"
      " using 1 instead.\n", tscale);
  tscale = 1;
 }

 extfree_refs = counter_u64_alloc(M_WAITOK);
 extfree_rels = counter_u64_alloc(M_WAITOK);
 counter_u64_zero(extfree_refs);
 counter_u64_zero(extfree_rels);

 t4_init_shared_cpl_handlers();
 t4_register_cpl_handler(CPL_FW4_MSG, handle_fw_msg);
 t4_register_cpl_handler(CPL_FW6_MSG, handle_fw_msg);
 t4_register_cpl_handler(CPL_SGE_EGR_UPDATE, handle_sge_egr_update);
 t4_register_cpl_handler(CPL_RX_PKT, t4_eth_rx);




 t4_register_fw_msg_handler(FW6_TYPE_CMD_RPL, t4_handle_fw_rpl);
 t4_register_fw_msg_handler(FW6_TYPE_WRERR_RPL, t4_handle_wrerr_rpl);
}
