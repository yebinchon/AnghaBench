
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mibif {int dummy; } ;


 struct mibif* mib_first_if () ;
 struct mibif* mib_next_if (struct mibif*) ;
 int oid_wlan ;
 int or_register (int *,char*,int ) ;
 int reg_wlan ;
 int timer_start_repeat (int ,int ,int ,int *,int ) ;
 int wlan_attach_newif (struct mibif*) ;
 int wlan_data_timer ;
 int wlan_module ;
 int wlan_poll_ticks ;
 int wlan_update_data ;

__attribute__((used)) static void
wlan_start(void)
{
 struct mibif *ifp;

 reg_wlan = or_register(&oid_wlan,
     "The MIB module for managing wireless networking.", wlan_module);


  for (ifp = mib_first_if(); ifp != ((void*)0); ifp = mib_next_if(ifp))
  wlan_attach_newif(ifp);

 wlan_data_timer = timer_start_repeat(wlan_poll_ticks,
     wlan_poll_ticks, wlan_update_data, ((void*)0), wlan_module);
}
