
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wlan_iface {int weptxkey; int wname; int wepsupported; } ;


 int IEEE80211_IOC_WEPTXKEY ;
 int IEEE80211_KEYIX_NONE ;
 int IEEE80211_WEP_NKID ;
 scalar_t__ wlan_ioctl (int ,int ,int*,int *,size_t*,int) ;

int
wlan_set_weptxkey(struct wlan_iface *wif)
{
 int val;
 size_t argsize = 0;

 if (!wif->wepsupported)
  return (0);

 if (wif->weptxkey >= IEEE80211_WEP_NKID)
  return (-1);

 if (wif->weptxkey == 0)
  val = IEEE80211_KEYIX_NONE;
 else
  val = wif->weptxkey - 1;
 if (wlan_ioctl(wif->wname, IEEE80211_IOC_WEPTXKEY, &val, ((void*)0),
     &argsize, 1) < 0)
  return (-1);

 return (0);
}
