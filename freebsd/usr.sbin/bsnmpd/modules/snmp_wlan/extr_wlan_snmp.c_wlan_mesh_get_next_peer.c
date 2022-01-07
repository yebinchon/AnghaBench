
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint ;
struct wlan_peer {int dummy; } ;
struct wlan_iface {scalar_t__ mode; int peerlist; } ;
struct asn_oid {scalar_t__ len; } ;


 int IEEE80211_ADDR_LEN ;
 int IFNAMSIZ ;
 struct wlan_peer* SLIST_FIRST (int *) ;
 struct wlan_peer* SLIST_NEXT (struct wlan_peer*,int ) ;
 scalar_t__ WlanIfaceOperatingModeType_meshPoint ;
 struct wlan_iface* wlan_find_interface (char*) ;
 struct wlan_peer* wlan_find_peer (struct wlan_iface*,char*) ;
 scalar_t__ wlan_mac_index_decode (struct asn_oid const*,scalar_t__,char*,char*) ;
 struct wlan_iface* wlan_mesh_first_interface () ;
 struct wlan_iface* wlan_mesh_next_interface (struct wlan_iface*) ;
 int wp ;

__attribute__((used)) static struct wlan_peer *
wlan_mesh_get_next_peer(const struct asn_oid *oid, uint sub, struct wlan_iface **wif)
{
 char wname[IFNAMSIZ];
 char pmac[IEEE80211_ADDR_LEN];
 struct wlan_peer *wip;

 if (oid->len - sub == 0) {
  for (*wif = wlan_mesh_first_interface(); *wif != ((void*)0);
      *wif = wlan_mesh_next_interface(*wif)) {
   wip = SLIST_FIRST(&(*wif)->peerlist);
   if (wip != ((void*)0))
    return (wip);
  }
  return (((void*)0));
 }

 if (wlan_mac_index_decode(oid, sub, wname, pmac) < 0 ||
     (*wif = wlan_find_interface(wname)) == ((void*)0) ||
     (*wif)->mode != WlanIfaceOperatingModeType_meshPoint ||
     (wip = wlan_find_peer(*wif, pmac)) == ((void*)0))
  return (((void*)0));

 if ((wip = SLIST_NEXT(wip, wp)) != ((void*)0))
  return (wip);

 while ((*wif = wlan_mesh_next_interface(*wif)) != ((void*)0))
  if ((wip = SLIST_FIRST(&(*wif)->peerlist)) != ((void*)0))
   break;

 return (wip);
}
