
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wlan_iface {int dummy; } ;


 struct wlan_iface* SLIST_FIRST (int *) ;
 int SLIST_REMOVE_HEAD (int *,int ) ;
 int w_if ;
 int wlan_free_interface (struct wlan_iface*) ;
 int wlan_ifaces ;

__attribute__((used)) static void
wlan_free_iflist(void)
{
 struct wlan_iface *w;

 while ((w = SLIST_FIRST(&wlan_ifaces)) != ((void*)0)) {
  SLIST_REMOVE_HEAD(&wlan_ifaces, w_if);
  wlan_free_interface(w);
 }
}
