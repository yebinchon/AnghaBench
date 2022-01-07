
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wlan_iface {scalar_t__ mode; char* desired_ssid; int wname; } ;


 int IEEE80211_IOC_MESH_ID ;
 int IEEE80211_IOC_SSID ;
 int IEEE80211_NWID_LEN ;
 scalar_t__ WlanIfaceOperatingModeType_meshPoint ;
 int memcpy (char*,char*,size_t) ;
 int memset (char*,int ,int) ;
 scalar_t__ wlan_ioctl (int ,int ,int*,char*,size_t*,int ) ;

int
wlan_config_get_dssid(struct wlan_iface *wif)
{
 int val = -1;
 size_t argsize = IEEE80211_NWID_LEN + 1;
 char ssid[IEEE80211_NWID_LEN + 1];

 memset(ssid, 0, IEEE80211_NWID_LEN + 1);

 if (wlan_ioctl(wif->wname,
     (wif->mode == WlanIfaceOperatingModeType_meshPoint) ?
     IEEE80211_IOC_MESH_ID : IEEE80211_IOC_SSID, &val, ssid,
     &argsize, 0) < 0)
  return (-1);

 if (argsize > IEEE80211_NWID_LEN)
  argsize = IEEE80211_NWID_LEN;
 memcpy(wif->desired_ssid, ssid, argsize);
 wif->desired_ssid[argsize] = '\0';

 return (0);
}
