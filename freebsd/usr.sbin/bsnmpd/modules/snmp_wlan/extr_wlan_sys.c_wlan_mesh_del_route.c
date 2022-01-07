
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int imr_dest; } ;
struct wlan_mesh_route {int mroute_status; TYPE_1__ imroute; } ;
struct wlan_iface {int wname; } ;


 size_t IEEE80211_ADDR_LEN ;
 int IEEE80211_IOC_MESH_RTCMD ;
 int IEEE80211_MESH_RTCMD_DELETE ;
 int RowStatus_destroy ;
 scalar_t__ wlan_ioctl (int ,int ,int*,int ,size_t*,int) ;

int
wlan_mesh_del_route(struct wlan_iface *wif, struct wlan_mesh_route *wmr)
{
 int val = IEEE80211_MESH_RTCMD_DELETE;
 size_t argsize = IEEE80211_ADDR_LEN;

 if (wlan_ioctl(wif->wname, IEEE80211_IOC_MESH_RTCMD, &val,
     wmr->imroute.imr_dest, &argsize, 1) < 0)
  return (-1);

 wmr->mroute_status = RowStatus_destroy;

 return (0);
}
