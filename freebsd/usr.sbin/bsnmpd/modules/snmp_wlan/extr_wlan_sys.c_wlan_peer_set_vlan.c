
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wlan_peer {int vlan; int pmac; } ;
struct wlan_iface {int wname; } ;
struct ieee80211req_sta_vlan {int sv_vlan; int sv_macaddr; } ;


 int IEEE80211_ADDR_LEN ;
 int IEEE80211_IOC_STA_VLAN ;
 int memcpy (int ,int ,int ) ;
 scalar_t__ wlan_ioctl (int ,int ,int*,struct ieee80211req_sta_vlan*,size_t*,int) ;

int
wlan_peer_set_vlan(struct wlan_iface *wif, struct wlan_peer *wip, int vlan)
{
 int val = 0;
 size_t argsize;
 struct ieee80211req_sta_vlan vreq;

 memcpy(vreq.sv_macaddr, wip->pmac, IEEE80211_ADDR_LEN);
 vreq.sv_vlan = vlan;
 argsize = sizeof(struct ieee80211req_sta_vlan);

 if (wlan_ioctl(wif->wname, IEEE80211_IOC_STA_VLAN,
     &val, &vreq, &argsize, 1) < 0)
  return (-1);

 wip->vlan = vlan;

 return (0);
}
