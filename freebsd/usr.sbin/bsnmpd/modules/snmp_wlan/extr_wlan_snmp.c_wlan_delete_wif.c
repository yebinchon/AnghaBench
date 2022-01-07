
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wlan_iface {int dummy; } ;


 int SLIST_REMOVE (int *,struct wlan_iface*,int ,int ) ;
 int w_if ;
 int wlan_free_interface (struct wlan_iface*) ;
 int wlan_iface ;
 int wlan_ifaces ;

__attribute__((used)) static void
wlan_delete_wif(struct wlan_iface *wif)
{
 SLIST_REMOVE(&wlan_ifaces, wif, wlan_iface, w_if);
 wlan_free_interface(wif);
}
