
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wlan_mesh_route {int mroute_status; int imroute; } ;
struct wlan_iface {int wname; } ;
struct ieee80211req_mesh_route {int imr_dest; } ;
typedef int routes ;


 int IEEE80211_IOC_MESH_RTCMD ;
 int IEEE80211_MESH_RTCMD_LIST ;
 int RowStatus_active ;
 int memcpy (int *,struct ieee80211req_mesh_route*,int) ;
 scalar_t__ wlan_ioctl (int ,int ,int*,struct ieee80211req_mesh_route*,size_t*,int ) ;
 scalar_t__ wlan_mesh_add_rtentry (struct wlan_iface*,struct wlan_mesh_route*) ;
 int wlan_mesh_free_route (struct wlan_mesh_route*) ;
 struct wlan_mesh_route* wlan_mesh_new_route (int ) ;

int
wlan_mesh_get_routelist(struct wlan_iface *wif)
{
 int i, nroutes, val = IEEE80211_MESH_RTCMD_LIST;
 size_t argsize;
 struct ieee80211req_mesh_route routes[128];
 struct ieee80211req_mesh_route *rt;
 struct wlan_mesh_route *wmr;

 argsize = sizeof(routes);
 if (wlan_ioctl(wif->wname, IEEE80211_IOC_MESH_RTCMD, &val, routes,
     &argsize, 0) < 0)
  return (-1);

 nroutes = argsize / sizeof(*rt);
 for (i = 0; i < nroutes; i++) {
  rt = routes + i;
  if ((wmr = wlan_mesh_new_route(rt->imr_dest)) == ((void*)0))
   return (-1);
  memcpy(&wmr->imroute, rt, sizeof(*rt));
  wmr->mroute_status = RowStatus_active;
  if (wlan_mesh_add_rtentry(wif, wmr) < 0)
   wlan_mesh_free_route(wmr);
 }

 return (0);
}
