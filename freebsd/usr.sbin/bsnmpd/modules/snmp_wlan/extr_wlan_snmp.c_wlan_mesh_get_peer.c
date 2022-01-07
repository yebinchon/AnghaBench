
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint ;
struct wlan_peer {int dummy; } ;
struct wlan_iface {scalar_t__ mode; } ;
struct asn_oid {int dummy; } ;


 int IEEE80211_ADDR_LEN ;
 int IFNAMSIZ ;
 scalar_t__ WlanIfaceOperatingModeType_meshPoint ;
 struct wlan_iface* wlan_find_interface (char*) ;
 struct wlan_peer* wlan_find_peer (struct wlan_iface*,int *) ;
 scalar_t__ wlan_mac_index_decode (struct asn_oid const*,int ,char*,int *) ;

__attribute__((used)) static struct wlan_peer *
wlan_mesh_get_peer(const struct asn_oid *oid, uint sub, struct wlan_iface **wif)
{
 char wname[IFNAMSIZ];
 uint8_t pmac[IEEE80211_ADDR_LEN];

 if (wlan_mac_index_decode(oid, sub, wname, pmac) < 0)
  return (((void*)0));

 if ((*wif = wlan_find_interface(wname)) == ((void*)0) ||
     (*wif)->mode != WlanIfaceOperatingModeType_meshPoint)
  return (((void*)0));

 return (wlan_find_peer(*wif, pmac));
}
