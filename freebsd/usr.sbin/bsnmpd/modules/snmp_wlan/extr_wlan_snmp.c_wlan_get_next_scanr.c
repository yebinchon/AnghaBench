
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef scalar_t__ uint ;
struct wlan_scan_result {int dummy; } ;
struct wlan_iface {int scanlist; } ;
struct asn_oid {scalar_t__ len; } ;


 int IEEE80211_ADDR_LEN ;
 int IEEE80211_NWID_LEN ;
 int IFNAMSIZ ;
 struct wlan_scan_result* SLIST_FIRST (int *) ;
 struct wlan_scan_result* SLIST_NEXT (struct wlan_scan_result*,int ) ;
 struct wlan_iface* wlan_find_interface (char*) ;
 struct wlan_iface* wlan_first_interface () ;
 struct wlan_iface* wlan_next_interface (struct wlan_iface*) ;
 struct wlan_scan_result* wlan_scan_find_result (struct wlan_iface*,int *,int *) ;
 scalar_t__ wlan_scanr_index_decode (struct asn_oid const*,scalar_t__,char*,int *,int *) ;
 int wsr ;

__attribute__((used)) static struct wlan_scan_result *
wlan_get_next_scanr(const struct asn_oid *oid, uint sub,
    struct wlan_iface **wif)
{
 char wname[IFNAMSIZ];
 uint8_t ssid[IEEE80211_NWID_LEN + 1];
 uint8_t bssid[IEEE80211_ADDR_LEN];
 struct wlan_scan_result *sr;

 if (oid->len - sub == 0) {
  for (*wif = wlan_first_interface(); *wif != ((void*)0);
      *wif = wlan_next_interface(*wif)) {
   sr = SLIST_FIRST(&(*wif)->scanlist);
   if (sr != ((void*)0))
    return (sr);
  }
  return (((void*)0));
 }

 if (wlan_scanr_index_decode(oid, sub, wname, ssid, bssid) < 0 ||
     (*wif = wlan_find_interface(wname)) == ((void*)0) ||
     (sr = wlan_scan_find_result(*wif, ssid, bssid)) == ((void*)0))
  return (((void*)0));

 if ((sr = SLIST_NEXT(sr, wsr)) != ((void*)0))
  return (sr);

 while ((*wif = wlan_next_interface(*wif)) != ((void*)0))
  if ((sr = SLIST_FIRST(&(*wif)->scanlist)) != ((void*)0))
   break;

 return (sr);
}
