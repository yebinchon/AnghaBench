
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wlan_iface {int hwmp_max_hops; int wname; int hwmp_root_mode; } ;


 int IEEE80211_HWMP_ROOTMODE_DISABLED ;
 int IEEE80211_HWMP_ROOTMODE_NORMAL ;
 int IEEE80211_HWMP_ROOTMODE_PROACTIVE ;
 int IEEE80211_HWMP_ROOTMODE_RANN ;
 int IEEE80211_IOC_HWMP_MAXHOPS ;
 int IEEE80211_IOC_HWMP_ROOTMODE ;






 scalar_t__ wlan_ioctl (int ,int,int*,int *,size_t*,int) ;

int
wlan_hwmp_config_set(struct wlan_iface *wif, int which)
{
 int op, val = 0;
 size_t argsize = 0;

 switch (which) {
 case 132:
  op = IEEE80211_IOC_HWMP_ROOTMODE;
  switch (wif->hwmp_root_mode) {
  case 131:
   val = IEEE80211_HWMP_ROOTMODE_DISABLED;
   break;
  case 130:
   val = IEEE80211_HWMP_ROOTMODE_NORMAL;
   break;
  case 129:
   val = IEEE80211_HWMP_ROOTMODE_PROACTIVE;
   break;
  case 128:
   val = IEEE80211_HWMP_ROOTMODE_RANN;
   break;
  default:
   return (-1);
  }
  break;
 case 133:
  op = IEEE80211_IOC_HWMP_MAXHOPS;
  val = wif->hwmp_max_hops;
  break;
 default:
  return (-1);
 }

 if (wlan_ioctl(wif->wname, op, &val, ((void*)0), &argsize, 1) < 0)
  return (-1);

 return (0);
}
