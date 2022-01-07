
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
typedef int uint ;
struct TYPE_2__ {scalar_t__ params; } ;
struct wlan_iface {TYPE_1__ roamparams; } ;
struct ieee80211_roamparam {int dummy; } ;
struct asn_oid {int dummy; } ;


 scalar_t__ IEEE80211_MODE_MAX ;
 int IFNAMSIZ ;
 struct wlan_iface* wlan_find_interface (char*) ;
 scalar_t__ wlan_phy_index_decode (struct asn_oid const*,int ,char*,scalar_t__*) ;

__attribute__((used)) static struct ieee80211_roamparam *
wlan_get_roam_param(const struct asn_oid *oid, uint sub, struct wlan_iface **wif)
{
 uint32_t phy;
 char wname[IFNAMSIZ];

 if (wlan_phy_index_decode(oid, sub, wname, &phy) < 0)
  return (((void*)0));

 if ((*wif = wlan_find_interface(wname)) == ((void*)0))
  return (((void*)0));

 if (phy == 0 || phy > IEEE80211_MODE_MAX)
  return (((void*)0));

 return ((*wif)->roamparams.params + phy - 1);
}
