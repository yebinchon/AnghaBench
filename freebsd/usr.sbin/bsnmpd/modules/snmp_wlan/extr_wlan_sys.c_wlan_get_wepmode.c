
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wlan_iface {int wepsupported; void* wepmode; scalar_t__ weptxkey; int wname; } ;


 int IEEE80211_IOC_WEP ;

 int IEEE80211_WEP_NOSUP ;


 void* wlanWepMode_mixed ;
 void* wlanWepMode_off ;
 void* wlanWepMode_on ;
 scalar_t__ wlan_ioctl (int ,int ,int*,int *,size_t*,int ) ;

int
wlan_get_wepmode(struct wlan_iface *wif)
{
 int val = 0;
 size_t argsize = 0;

 if (wlan_ioctl(wif->wname, IEEE80211_IOC_WEP, &val, ((void*)0),
     &argsize, 0) < 0 || val == IEEE80211_WEP_NOSUP) {
  wif->wepsupported = 0;
  wif->wepmode = wlanWepMode_off;
  wif->weptxkey = 0;
  return (-1);
 }

 wif->wepsupported = 1;

 switch (val) {
 case 128:
  wif->wepmode = wlanWepMode_on;
  break;
 case 130:
  wif->wepmode = wlanWepMode_mixed;
  break;
 case 129:

 default:
  wif->wepmode = wlanWepMode_off;
  break;
 }

 return (0);
}
