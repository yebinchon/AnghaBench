
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint ;
struct wlan_mesh_route {int dummy; } ;
struct wlan_iface {int dummy; } ;
struct asn_oid {int dummy; } ;


 int IEEE80211_ADDR_LEN ;
 int IFNAMSIZ ;
 struct wlan_iface* wlan_find_interface (char*) ;
 scalar_t__ wlan_mac_index_decode (struct asn_oid const*,int ,char*,char*) ;
 struct wlan_mesh_route* wlan_mesh_find_route (struct wlan_iface*,char*) ;

__attribute__((used)) static struct wlan_mesh_route *
wlan_mesh_get_route(const struct asn_oid *oid, uint sub, struct wlan_iface **wif)
{
 char wname[IFNAMSIZ];
 char dstmac[IEEE80211_ADDR_LEN];

 if (wlan_mac_index_decode(oid, sub, wname, dstmac) < 0)
  return (((void*)0));

 if ((*wif = wlan_find_interface(wname)) == ((void*)0))
  return (((void*)0));

 return (wlan_mesh_find_route(*wif, dstmac));
}
