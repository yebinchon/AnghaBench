
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wlan_iface {int scan_status; int wname; int scan_maxdwell; int scan_mindwell; int scan_duration; int scan_flags; } ;
struct ieee80211_scan_req {scalar_t__ sr_nssid; int sr_maxdwell; int sr_mindwell; int sr_duration; int sr_flags; } ;
typedef int sr ;


 int IEEE80211_IOC_SCAN_BGSCAN ;
 int IEEE80211_IOC_SCAN_REQ ;
 int memset (struct ieee80211_scan_req*,int ,int) ;
 int wlanScanConfigStatus_running ;
 scalar_t__ wlan_ioctl (int ,int ,int*,struct ieee80211_scan_req*,size_t*,int) ;
 int wlan_snmp_to_scan_flags (int ) ;

int
wlan_set_scan_config(struct wlan_iface *wif)
{
 int val = 0;
 size_t argsize;
 struct ieee80211_scan_req sr;


 memset(&sr, 0, sizeof(sr));
 argsize = sizeof(struct ieee80211_scan_req);
 sr.sr_flags = wlan_snmp_to_scan_flags(wif->scan_flags);
 sr.sr_flags |= IEEE80211_IOC_SCAN_BGSCAN;
 sr.sr_duration = wif->scan_duration;
 sr.sr_mindwell = wif->scan_mindwell;
 sr.sr_maxdwell = wif->scan_maxdwell;
 sr.sr_nssid = 0;

 if (wlan_ioctl(wif->wname, IEEE80211_IOC_SCAN_REQ,
     &val, &sr, &argsize, 1) < 0)
  return (-1);

 wif->scan_status = wlanScanConfigStatus_running;
 return (0);
}
