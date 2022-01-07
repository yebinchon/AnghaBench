
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int uint ;
struct wlan_iface {int dummy; } ;
struct ieee80211_channel {int dummy; } ;
struct asn_oid {int dummy; } ;


 int IFNAMSIZ ;
 scalar_t__ wlan_channel_index_decode (struct asn_oid const*,int ,char*,int *) ;
 struct ieee80211_channel* wlan_find_channel (struct wlan_iface*,int ) ;
 struct wlan_iface* wlan_find_interface (char*) ;

__attribute__((used)) static struct ieee80211_channel *
wlan_get_channel(const struct asn_oid *oid, uint sub, struct wlan_iface **wif)
{
 uint32_t cindex;
 char wname[IFNAMSIZ];

 if (wlan_channel_index_decode(oid, sub, wname, &cindex) < 0)
  return (((void*)0));

 if ((*wif = wlan_find_interface(wname)) == ((void*)0))
  return (((void*)0));

 return (wlan_find_channel(*wif, cindex));
}
