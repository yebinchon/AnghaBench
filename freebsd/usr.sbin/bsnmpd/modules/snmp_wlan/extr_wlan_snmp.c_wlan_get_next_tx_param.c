
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
typedef scalar_t__ uint ;
struct TYPE_2__ {struct ieee80211_txparam* params; } ;
struct wlan_iface {scalar_t__ status; TYPE_1__ txparams; } ;
struct ieee80211_txparam {int dummy; } ;
struct asn_oid {scalar_t__ len; } ;


 int IEEE80211_MODE_MAX ;
 int IFNAMSIZ ;
 scalar_t__ RowStatus_active ;
 struct wlan_iface* wlan_find_interface (char*) ;
 struct wlan_iface* wlan_first_interface () ;
 struct wlan_iface* wlan_next_interface (struct wlan_iface*) ;
 scalar_t__ wlan_phy_index_decode (struct asn_oid const*,scalar_t__,char*,int*) ;

__attribute__((used)) static struct ieee80211_txparam *
wlan_get_next_tx_param(const struct asn_oid *oid, uint sub,
    struct wlan_iface **wif, uint32_t *phy)
{
 char wname[IFNAMSIZ];

 if (oid->len - sub == 0) {
  for (*wif = wlan_first_interface(); *wif != ((void*)0);
      *wif = wlan_next_interface(*wif)) {
   if ((*wif)->status != RowStatus_active)
    continue;
   *phy = 1;
   return ((*wif)->txparams.params);
  }
  return (((void*)0));
 }

 if (wlan_phy_index_decode(oid, sub, wname, phy) < 0)
  return (((void*)0));

 if (*phy == 0 || (*wif = wlan_find_interface(wname)) == ((void*)0))
  return (((void*)0));

 if (++(*phy) <= IEEE80211_MODE_MAX)
  return ((*wif)->txparams.params + *phy - 1);

 *phy = 1;
 while ((*wif = wlan_next_interface(*wif)) != ((void*)0))
  if ((*wif)->status == RowStatus_active)
   return ((*wif)->txparams.params);

 return (((void*)0));
}
