
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wlan_iface {int mode; int wname; } ;
struct ifmediareq {int ifm_current; int ifm_name; } ;


 scalar_t__ ENXIO ;
 int IFM_FLAG0 ;
 int IFM_IEEE80211_ADHOC ;
 int IFM_IEEE80211_HOSTAP ;
 int IFM_IEEE80211_MBSS ;
 int IFM_IEEE80211_MONITOR ;
 int IFM_IEEE80211_WDS ;
 int SIOCGIFMEDIA ;
 int WlanIfaceOperatingModeType_adhocDemo ;
 int WlanIfaceOperatingModeType_hostAp ;
 int WlanIfaceOperatingModeType_ibss ;
 int WlanIfaceOperatingModeType_meshPoint ;
 int WlanIfaceOperatingModeType_monitor ;
 int WlanIfaceOperatingModeType_station ;
 int WlanIfaceOperatingModeType_wds ;
 scalar_t__ errno ;
 scalar_t__ ioctl (int ,int ,struct ifmediareq*) ;
 int memset (struct ifmediareq*,int ,int) ;
 int sock ;
 int strlcpy (int ,int ,int) ;

int
wlan_get_opmode(struct wlan_iface *wif)
{
 struct ifmediareq ifmr;

 memset(&ifmr, 0, sizeof(struct ifmediareq));
 strlcpy(ifmr.ifm_name, wif->wname, sizeof(ifmr.ifm_name));

 if (ioctl(sock, SIOCGIFMEDIA, &ifmr) < 0) {
  if (errno == ENXIO)
   return (-1);
  wif->mode = WlanIfaceOperatingModeType_station;
  return (0);
 }

 if (ifmr.ifm_current & IFM_IEEE80211_ADHOC) {
  if (ifmr.ifm_current & IFM_FLAG0)
   wif->mode = WlanIfaceOperatingModeType_adhocDemo;
  else
   wif->mode = WlanIfaceOperatingModeType_ibss;
 } else if (ifmr.ifm_current & IFM_IEEE80211_HOSTAP)
  wif->mode = WlanIfaceOperatingModeType_hostAp;
 else if (ifmr.ifm_current & IFM_IEEE80211_MONITOR)
  wif->mode = WlanIfaceOperatingModeType_monitor;
 else if (ifmr.ifm_current & IFM_IEEE80211_MBSS)
  wif->mode = WlanIfaceOperatingModeType_meshPoint;
 else if (ifmr.ifm_current & IFM_IEEE80211_WDS)
  wif->mode = WlanIfaceOperatingModeType_wds;

 return (0);
}
