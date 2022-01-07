
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wlan_iface {scalar_t__ mode; scalar_t__ status; } ;


 scalar_t__ RowStatus_active ;
 scalar_t__ WlanIfaceOperatingModeType_meshPoint ;
 struct wlan_iface* wlan_next_interface (struct wlan_iface*) ;

__attribute__((used)) static struct wlan_iface *
wlan_mesh_next_interface(struct wlan_iface *wif)
{
 struct wlan_iface *nwif;

 while ((nwif = wlan_next_interface(wif)) != ((void*)0)) {
  if (nwif->mode == WlanIfaceOperatingModeType_meshPoint &&
      nwif->status == RowStatus_active)
   break;
  wif = nwif;
 }

 return (nwif);
}
