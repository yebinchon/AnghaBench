
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
typedef size_t u32 ;
struct init_brb_ram_req {int* num_active_tcs; size_t max_ports_per_engine; int guranteed_per_tc; int min_pkt_size; int headroom_per_tc; } ;
struct ecore_ptt {int dummy; } ;
struct ecore_hwfn {int p_dev; } ;


 int BRB_BLOCK_SIZE ;
 size_t BRB_HYST_BLOCKS ;
 size_t BRB_MIN_BLOCKS_PER_TC ;
 size_t BRB_REG_LB_TC_FULL_XOFF_THRESHOLD_0 ;
 size_t BRB_REG_LB_TC_FULL_XON_THRESHOLD_0 ;
 size_t BRB_REG_LB_TC_PAUSE_XOFF_THRESHOLD_0 ;
 size_t BRB_REG_LB_TC_PAUSE_XON_THRESHOLD_0 ;
 size_t BRB_REG_MAIN_TC_FULL_XOFF_THRESHOLD_0 ;
 size_t BRB_REG_MAIN_TC_FULL_XON_THRESHOLD_0 ;
 size_t BRB_REG_MAIN_TC_GUARANTIED_HYST_0 ;
 size_t BRB_REG_MAIN_TC_PAUSE_XOFF_THRESHOLD_0 ;
 size_t BRB_REG_MAIN_TC_PAUSE_XON_THRESHOLD_0 ;
 size_t BRB_REG_SHARED_HR_AREA ;
 size_t BRB_REG_TC_GUARANTIED_0 ;
 size_t BRB_REG_TOTAL_MAC_SIZE ;
 size_t BRB_TOTAL_RAM_BLOCKS_BB ;
 size_t BRB_TOTAL_RAM_BLOCKS_K2 ;
 scalar_t__ DIV_ROUND_UP (int ,int ) ;
 scalar_t__ ECORE_IS_K2 (int ) ;
 size_t MAX_NUM_PORTS ;
 size_t NUM_OF_TCS ;
 int ecore_wr (struct ecore_hwfn*,struct ecore_ptt*,size_t,size_t) ;

void ecore_init_brb_ram(struct ecore_hwfn *p_hwfn,
      struct ecore_ptt *p_ptt,
      struct init_brb_ram_req* req)
{
 u32 tc_headroom_blocks, min_pkt_size_blocks, total_blocks;
 u32 active_port_blocks, reg_offset = 0;
 u8 port, active_ports = 0;

 tc_headroom_blocks = (u32)DIV_ROUND_UP(req->headroom_per_tc, BRB_BLOCK_SIZE);
 min_pkt_size_blocks = (u32)DIV_ROUND_UP(req->min_pkt_size, BRB_BLOCK_SIZE);
 total_blocks = ECORE_IS_K2(p_hwfn->p_dev) ? BRB_TOTAL_RAM_BLOCKS_K2 : BRB_TOTAL_RAM_BLOCKS_BB;


 for (port = 0; port < MAX_NUM_PORTS; port++)
  if (req->num_active_tcs[port])
   active_ports++;

 active_port_blocks = (u32)(total_blocks / active_ports);

 for (port = 0; port < req->max_ports_per_engine; port++) {
  u32 port_blocks, port_shared_blocks, port_guaranteed_blocks;
  u32 full_xoff_th, full_xon_th, pause_xoff_th, pause_xon_th;
  u32 tc_guaranteed_blocks;
  u8 tc;


  tc_guaranteed_blocks = (u32)DIV_ROUND_UP(req->guranteed_per_tc, BRB_BLOCK_SIZE);
  port_blocks = req->num_active_tcs[port] ? active_port_blocks : 0;
  port_guaranteed_blocks = req->num_active_tcs[port] * tc_guaranteed_blocks;
  port_shared_blocks = port_blocks - port_guaranteed_blocks;
  full_xoff_th = req->num_active_tcs[port] * BRB_MIN_BLOCKS_PER_TC;
  full_xon_th = full_xoff_th + min_pkt_size_blocks;
  pause_xoff_th = tc_headroom_blocks;
  pause_xon_th = pause_xoff_th + min_pkt_size_blocks;


  ecore_wr(p_hwfn, p_ptt, BRB_REG_TOTAL_MAC_SIZE + port * 4, port_blocks);


  ecore_wr(p_hwfn, p_ptt, BRB_REG_SHARED_HR_AREA + port * 4, port_shared_blocks);

  for (tc = 0; tc < NUM_OF_TCS; tc++, reg_offset += 4) {

   if (tc == req->num_active_tcs[port]) {
    tc_guaranteed_blocks = 0;
    full_xoff_th = 0;
    full_xon_th = 0;
    pause_xoff_th = 0;
    pause_xon_th = 0;
   }


   ecore_wr(p_hwfn, p_ptt, BRB_REG_TC_GUARANTIED_0 + reg_offset, tc_guaranteed_blocks);
   ecore_wr(p_hwfn, p_ptt, BRB_REG_MAIN_TC_GUARANTIED_HYST_0 + reg_offset, BRB_HYST_BLOCKS);




   ecore_wr(p_hwfn, p_ptt, BRB_REG_LB_TC_FULL_XOFF_THRESHOLD_0 + reg_offset, full_xoff_th);
   ecore_wr(p_hwfn, p_ptt, BRB_REG_LB_TC_FULL_XON_THRESHOLD_0 + reg_offset, full_xon_th);
   ecore_wr(p_hwfn, p_ptt, BRB_REG_LB_TC_PAUSE_XOFF_THRESHOLD_0 + reg_offset, pause_xoff_th);
   ecore_wr(p_hwfn, p_ptt, BRB_REG_LB_TC_PAUSE_XON_THRESHOLD_0 + reg_offset, pause_xon_th);




   ecore_wr(p_hwfn, p_ptt, BRB_REG_MAIN_TC_FULL_XOFF_THRESHOLD_0 + reg_offset, full_xoff_th);
   ecore_wr(p_hwfn, p_ptt, BRB_REG_MAIN_TC_FULL_XON_THRESHOLD_0 + reg_offset, full_xon_th);
   ecore_wr(p_hwfn, p_ptt, BRB_REG_MAIN_TC_PAUSE_XOFF_THRESHOLD_0 + reg_offset, pause_xoff_th);
   ecore_wr(p_hwfn, p_ptt, BRB_REG_MAIN_TC_PAUSE_XON_THRESHOLD_0 + reg_offset, pause_xon_th);
  }
 }
}
