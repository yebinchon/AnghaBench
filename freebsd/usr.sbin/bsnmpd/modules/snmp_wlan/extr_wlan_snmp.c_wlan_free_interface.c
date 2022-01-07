
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wlan_iface {struct wlan_iface* chanlist; } ;


 int free (struct wlan_iface*) ;
 int wlan_free_peerlist (struct wlan_iface*) ;
 int wlan_mac_free_maclist (struct wlan_iface*) ;
 int wlan_mesh_free_routes (struct wlan_iface*) ;
 int wlan_scan_free_results (struct wlan_iface*) ;

__attribute__((used)) static void
wlan_free_interface(struct wlan_iface *wif)
{
 wlan_free_peerlist(wif);
 free(wif->chanlist);
 wlan_scan_free_results(wif);
 wlan_mac_free_maclist(wif);
 wlan_mesh_free_routes(wif);
 free(wif);
}
