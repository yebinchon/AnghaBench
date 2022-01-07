
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* bridge_data_timer ;
 int bridge_module ;
 int bridge_poll_ticks ;
 int bridge_tc_poll_ticks ;
 void* bridge_tc_timer ;
 int bridge_update_all ;
 int bridge_update_tc_time ;
 int oid_dot1Bridge ;
 int or_register (int *,char*,int ) ;
 int reg_bridge ;
 void* timer_start_repeat (int ,int ,int ,int *,int ) ;

__attribute__((used)) static void
bridge_start(void)
{
 reg_bridge = or_register(&oid_dot1Bridge,
     "The IETF MIB for Bridges (RFC 4188).", bridge_module);

 bridge_data_timer = timer_start_repeat(bridge_poll_ticks,
     bridge_poll_ticks, bridge_update_all, ((void*)0), bridge_module);

 bridge_tc_timer = timer_start_repeat(bridge_tc_poll_ticks,
     bridge_tc_poll_ticks, bridge_update_tc_time, ((void*)0), bridge_module);
}
