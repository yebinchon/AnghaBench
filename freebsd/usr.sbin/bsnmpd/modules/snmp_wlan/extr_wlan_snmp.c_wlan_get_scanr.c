
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint ;
struct wlan_scan_result {int dummy; } ;
struct wlan_iface {int dummy; } ;
struct asn_oid {int dummy; } ;


 int IEEE80211_ADDR_LEN ;
 int IEEE80211_NWID_LEN ;
 int IFNAMSIZ ;
 struct wlan_iface* wlan_find_interface (char*) ;
 struct wlan_scan_result* wlan_scan_find_result (struct wlan_iface*,int *,int *) ;
 scalar_t__ wlan_scanr_index_decode (struct asn_oid const*,int ,char*,int *,int *) ;

__attribute__((used)) static struct wlan_scan_result *
wlan_get_scanr(const struct asn_oid *oid, uint sub, struct wlan_iface **wif)
{
 char wname[IFNAMSIZ];
 uint8_t ssid[IEEE80211_NWID_LEN + 1];
 uint8_t bssid[IEEE80211_ADDR_LEN];

 if (wlan_scanr_index_decode(oid, sub, wname, ssid, bssid) < 0)
  return (((void*)0));

 if ((*wif = wlan_find_interface(wname)) == ((void*)0))
  return (((void*)0));

 return (wlan_scan_find_result(*wif, ssid, bssid));
}
