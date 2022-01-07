
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint ;
struct wlan_mac_mac {int dummy; } ;
struct wlan_iface {int dummy; } ;
struct asn_oid {int dummy; } ;


 int IEEE80211_ADDR_LEN ;
 int IFNAMSIZ ;
 struct wlan_iface* wlan_find_interface (char*) ;
 struct wlan_mac_mac* wlan_mac_find_mac (struct wlan_iface*,char*) ;
 scalar_t__ wlan_mac_index_decode (struct asn_oid const*,int ,char*,char*) ;

__attribute__((used)) static struct wlan_mac_mac *
wlan_get_acl_mac(const struct asn_oid *oid, uint sub, struct wlan_iface **wif)
{
 char wname[IFNAMSIZ];
 char mac[IEEE80211_ADDR_LEN];

 if (wlan_mac_index_decode(oid, sub, wname, mac) < 0)
  return (((void*)0));

 if ((*wif = wlan_find_interface(wname)) == ((void*)0))
  return (((void*)0));

 return (wlan_mac_find_mac(*wif, mac));
}
