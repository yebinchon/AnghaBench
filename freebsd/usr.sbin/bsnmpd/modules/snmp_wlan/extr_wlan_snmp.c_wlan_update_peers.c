
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wlan_iface {scalar_t__ status; } ;


 scalar_t__ RowStatus_active ;
 scalar_t__ WLAN_LIST_MAXAGE ;
 scalar_t__ time (int *) ;
 struct wlan_iface* wlan_first_interface () ;
 int wlan_free_peerlist (struct wlan_iface*) ;
 int wlan_get_peerinfo (struct wlan_iface*) ;
 struct wlan_iface* wlan_next_interface (struct wlan_iface*) ;
 scalar_t__ wlan_peerlist_age ;

__attribute__((used)) static void
wlan_update_peers(void)
{
 struct wlan_iface *wif;

 if ((time(((void*)0)) - wlan_peerlist_age) <= WLAN_LIST_MAXAGE)
  return;

 for (wif = wlan_first_interface(); wif != ((void*)0);
     wif = wlan_next_interface(wif)) {
  if (wif->status != RowStatus_active)
   continue;
  wlan_free_peerlist(wif);
  (void)wlan_get_peerinfo(wif);
 }
 wlan_peerlist_age = time(((void*)0));
}
