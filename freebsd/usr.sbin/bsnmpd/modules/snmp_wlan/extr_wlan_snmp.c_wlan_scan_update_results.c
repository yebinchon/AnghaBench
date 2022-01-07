
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wlan_iface {scalar_t__ status; } ;


 scalar_t__ RowStatus_active ;
 scalar_t__ WLAN_LIST_MAXAGE ;
 scalar_t__ time (int *) ;
 struct wlan_iface* wlan_first_interface () ;
 int wlan_get_scan_results (struct wlan_iface*) ;
 struct wlan_iface* wlan_next_interface (struct wlan_iface*) ;
 int wlan_scan_free_results (struct wlan_iface*) ;
 scalar_t__ wlan_scanlist_age ;

__attribute__((used)) static void
wlan_scan_update_results(void)
{
 struct wlan_iface *wif;

 if ((time(((void*)0)) - wlan_scanlist_age) <= WLAN_LIST_MAXAGE)
  return;

 for (wif = wlan_first_interface(); wif != ((void*)0);
     wif = wlan_next_interface(wif)) {
  if (wif->status != RowStatus_active)
   continue;
  wlan_scan_free_results(wif);
  (void)wlan_get_scan_results(wif);
 }
 wlan_scanlist_age = time(((void*)0));
}
