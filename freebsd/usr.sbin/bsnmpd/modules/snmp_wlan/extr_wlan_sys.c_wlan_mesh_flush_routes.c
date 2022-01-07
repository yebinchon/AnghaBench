
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wlan_iface {int wname; } ;


 int IEEE80211_IOC_MESH_RTCMD ;
 int IEEE80211_MESH_RTCMD_FLUSH ;
 scalar_t__ wlan_ioctl (int ,int ,int*,int *,size_t*,int) ;

int
wlan_mesh_flush_routes(struct wlan_iface *wif)
{
 int val = IEEE80211_MESH_RTCMD_FLUSH;
 size_t argsize = 0;

 if (wlan_ioctl(wif->wname, IEEE80211_IOC_MESH_RTCMD, &val, ((void*)0),
     &argsize, 1) < 0)
  return (-1);

 return (0);
}
