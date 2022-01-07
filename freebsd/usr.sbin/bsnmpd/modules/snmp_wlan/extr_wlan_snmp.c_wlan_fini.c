
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int mib_unregister_newif (int ) ;
 int or_unregister (int ) ;
 int reg_wlan ;
 int wlan_free_iflist () ;
 int wlan_module ;

__attribute__((used)) static int
wlan_fini(void)
{
 mib_unregister_newif(wlan_module);
 or_unregister(reg_wlan);


 wlan_free_iflist();

 return (0);
}
