
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int bridge_addrs_fini () ;
 int * bridge_data_timer ;
 int bridge_ifs_fini () ;
 int bridge_module ;
 int bridge_ports_fini () ;
 int * bridge_tc_timer ;
 int mib_unregister_newif (int ) ;
 int or_unregister (int ) ;
 int reg_bridge ;
 int timer_stop (int *) ;

__attribute__((used)) static int
bridge_fini(void)
{
 mib_unregister_newif(bridge_module);
 or_unregister(reg_bridge);

 if (bridge_data_timer != ((void*)0)) {
  timer_stop(bridge_data_timer);
  bridge_data_timer = ((void*)0);
 }

 if (bridge_tc_timer != ((void*)0)) {
  timer_stop(bridge_tc_timer);
  bridge_tc_timer = ((void*)0);
 }

 bridge_ifs_fini();
 bridge_ports_fini();
 bridge_addrs_fini();

 return (0);
}
