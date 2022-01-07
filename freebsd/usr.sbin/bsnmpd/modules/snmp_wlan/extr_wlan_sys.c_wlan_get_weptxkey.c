
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wlan_iface {int weptxkey; int wname; int wepsupported; } ;


 int IEEE80211_IOC_WEPTXKEY ;
 int IEEE80211_KEYIX_NONE ;
 scalar_t__ wlan_ioctl (int ,int ,int*,int *,size_t*,int ) ;

int
wlan_get_weptxkey(struct wlan_iface *wif)
{
 int val;
 size_t argsize = 0;

 if (!wif->wepsupported)
  return (0);

 if (wlan_ioctl(wif->wname, IEEE80211_IOC_WEPTXKEY, &val, ((void*)0),
     &argsize, 0) < 0)
  return (-1);

 if (val == IEEE80211_KEYIX_NONE)
  wif->weptxkey = 0;
 else
  wif->weptxkey = val + 1;

 return (0);
}
