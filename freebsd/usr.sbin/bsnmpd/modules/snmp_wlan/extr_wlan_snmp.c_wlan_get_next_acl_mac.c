
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint ;
struct wlan_mac_mac {int dummy; } ;
struct wlan_iface {int mac_maclist; } ;
struct asn_oid {scalar_t__ len; } ;


 int IEEE80211_ADDR_LEN ;
 int IFNAMSIZ ;
 struct wlan_mac_mac* SLIST_FIRST (int *) ;
 struct wlan_mac_mac* SLIST_NEXT (struct wlan_mac_mac*,int ) ;
 struct wlan_iface* wlan_find_interface (char*) ;
 struct wlan_iface* wlan_first_interface () ;
 struct wlan_mac_mac* wlan_mac_find_mac (struct wlan_iface*,char*) ;
 scalar_t__ wlan_mac_index_decode (struct asn_oid const*,scalar_t__,char*,char*) ;
 struct wlan_iface* wlan_next_interface (struct wlan_iface*) ;
 int wm ;

__attribute__((used)) static struct wlan_mac_mac *
wlan_get_next_acl_mac(const struct asn_oid *oid, uint sub,
    struct wlan_iface **wif)
{
 char wname[IFNAMSIZ];
 char mac[IEEE80211_ADDR_LEN];
 struct wlan_mac_mac *wmm;

 if (oid->len - sub == 0) {
  for (*wif = wlan_first_interface(); *wif != ((void*)0);
      *wif = wlan_next_interface(*wif)) {
   wmm = SLIST_FIRST(&(*wif)->mac_maclist);
   if (wmm != ((void*)0))
    return (wmm);
  }
  return (((void*)0));
 }

 if (wlan_mac_index_decode(oid, sub, wname, mac) < 0 ||
     (*wif = wlan_find_interface(wname)) == ((void*)0) ||
     (wmm = wlan_mac_find_mac(*wif, mac)) == ((void*)0))
  return (((void*)0));

 if ((wmm = SLIST_NEXT(wmm, wm)) != ((void*)0))
  return (wmm);

 while ((*wif = wlan_next_interface(*wif)) != ((void*)0))
  if ((wmm = SLIST_FIRST(&(*wif)->mac_maclist)) != ((void*)0))
   break;

 return (wmm);
}
