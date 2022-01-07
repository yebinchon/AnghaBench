
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wlan_iface {int hwmp_max_hops; int hwmp_root_mode; int wname; } ;






 int IEEE80211_IOC_HWMP_MAXHOPS ;
 int IEEE80211_IOC_HWMP_ROOTMODE ;


 int wlanHWMPRootMode_disabled ;
 int wlanHWMPRootMode_normal ;
 int wlanHWMPRootMode_proactive ;
 int wlanHWMPRootMode_rann ;
 scalar_t__ wlan_ioctl (int ,int,int*,int *,size_t*,int ) ;

int
wlan_hwmp_config_get(struct wlan_iface *wif, int which)
{
 int op, val = 0;
 size_t argsize = 0;

 switch (which) {
 case 128:
  op = IEEE80211_IOC_HWMP_ROOTMODE;
  break;
 case 129:
  op = IEEE80211_IOC_HWMP_MAXHOPS;
  break;
 default:
  return (-1);
 }

 if (wlan_ioctl(wif->wname, op, &val, ((void*)0), &argsize, 0) < 0)
  return (-1);

 switch (which) {
 case 128:
  switch (val) {
  case 132:
   wif->hwmp_root_mode = wlanHWMPRootMode_normal;
   break;
  case 131:
   wif->hwmp_root_mode = wlanHWMPRootMode_proactive;
   break;
  case 130:
   wif->hwmp_root_mode = wlanHWMPRootMode_rann;
   break;
  case 133:
  default:
   wif->hwmp_root_mode = wlanHWMPRootMode_disabled;
   break;
  }
  break;
 case 129:
  wif->hwmp_max_hops = val;
  break;
 }

 return (0);
}
