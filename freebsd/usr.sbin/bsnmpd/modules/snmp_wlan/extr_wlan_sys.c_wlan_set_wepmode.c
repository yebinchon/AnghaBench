
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wlan_iface {int wepmode; int wname; int wepsupported; } ;


 int IEEE80211_IOC_WEP ;
 int IEEE80211_WEP_MIXED ;
 int IEEE80211_WEP_OFF ;
 int IEEE80211_WEP_ON ;



 scalar_t__ wlan_ioctl (int ,int ,int*,int *,size_t*,int) ;

int
wlan_set_wepmode(struct wlan_iface *wif)
{
 int val;
 size_t argsize = 0;

 if (!wif->wepsupported)
  return (-1);

 switch (wif->wepmode) {
 case 129:
  val = IEEE80211_WEP_OFF;
  break;
 case 128:
  val = IEEE80211_WEP_ON;
  break;
 case 130:
  val = IEEE80211_WEP_MIXED;
  break;
 default:
  return (-1);
 }

 if (wlan_ioctl(wif->wname, IEEE80211_IOC_WEP, &val, ((void*)0),
     &argsize, 1) < 0)
  return (-1);

 return (0);
}
