
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wlan_mac_mac {int mac_status; } ;
struct wlan_iface {int dummy; } ;
struct ieee80211req_maclist {int ml_macaddr; } ;


 int RowStatus_active ;
 scalar_t__ wlan_mac_add_mac (struct wlan_iface*,struct wlan_mac_mac*) ;
 int wlan_mac_free_mac (struct wlan_mac_mac*) ;
 struct wlan_mac_mac* wlan_mac_new_mac (int ) ;

__attribute__((used)) static int
wlan_add_mac_macinfo(struct wlan_iface *wif,
    const struct ieee80211req_maclist *ml)
{
 struct wlan_mac_mac *mmac;

 if ((mmac = wlan_mac_new_mac(ml->ml_macaddr)) == ((void*)0))
  return (-1);

 mmac->mac_status = RowStatus_active;
 if (wlan_mac_add_mac(wif, mmac) < 0) {
  wlan_mac_free_mac(mmac);
  return (-1);
 }

 return (0);
}
