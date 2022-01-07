
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CPL_ABORT_RPL_RSS ;
 int CPL_ACT_OPEN_RPL ;
 int CPL_FW4_ACK ;
 int CPL_L2T_WRITE_RPL ;
 int CPL_SET_TCB_RPL ;
 int abort_rpl_rss_handler ;
 int act_open_rpl_handler ;
 int fw4_ack_handler ;
 int l2t_write_rpl_handler ;
 int set_tcb_rpl_handler ;
 int t4_register_cpl_handler (int ,int ) ;

__attribute__((used)) static void
t4_init_shared_cpl_handlers(void)
{

 t4_register_cpl_handler(CPL_SET_TCB_RPL, set_tcb_rpl_handler);
 t4_register_cpl_handler(CPL_L2T_WRITE_RPL, l2t_write_rpl_handler);
 t4_register_cpl_handler(CPL_ACT_OPEN_RPL, act_open_rpl_handler);
 t4_register_cpl_handler(CPL_ABORT_RPL_RSS, abort_rpl_rss_handler);
 t4_register_cpl_handler(CPL_FW4_ACK, fw4_ack_handler);
}
