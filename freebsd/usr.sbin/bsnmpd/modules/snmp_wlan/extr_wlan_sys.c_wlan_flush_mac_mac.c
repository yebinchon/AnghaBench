
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wlan_iface {int wname; } ;


 int IEEE80211_IOC_MACCMD ;
 int IEEE80211_MACCMD_FLUSH ;
 scalar_t__ wlan_ioctl (int ,int ,int*,int *,size_t*,int) ;

int
wlan_flush_mac_mac(struct wlan_iface *wif)
{
 int val = IEEE80211_MACCMD_FLUSH;
 size_t argsize = 0;

 if (wlan_ioctl(wif->wname, IEEE80211_IOC_MACCMD, &val, ((void*)0),
     &argsize, 1) < 0)
  return (-1);

 return (0);
}
