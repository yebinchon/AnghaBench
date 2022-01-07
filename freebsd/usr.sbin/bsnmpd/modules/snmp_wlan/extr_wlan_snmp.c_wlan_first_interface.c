
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wlan_iface {int dummy; } ;


 struct wlan_iface* SLIST_FIRST (int *) ;
 int wlan_ifaces ;

__attribute__((used)) static struct wlan_iface *
wlan_first_interface(void)
{
 return (SLIST_FIRST(&wlan_ifaces));
}
