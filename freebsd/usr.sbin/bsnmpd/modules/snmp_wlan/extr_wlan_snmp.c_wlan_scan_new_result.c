
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char uint8_t ;
struct wlan_scan_result {int bssid; int ssid; } ;


 int IEEE80211_ADDR_LEN ;
 scalar_t__ IEEE80211_NWID_LEN ;
 scalar_t__ malloc (int) ;
 int memcpy (int ,char const*,int ) ;
 int memset (struct wlan_scan_result*,int ,int) ;
 int strlcpy (int ,char const*,scalar_t__) ;

struct wlan_scan_result *
wlan_scan_new_result(const uint8_t *ssid, const uint8_t *bssid)
{
 struct wlan_scan_result *sr;

 sr = (struct wlan_scan_result *)malloc(sizeof(*sr));
 if (sr == ((void*)0))
  return (((void*)0));

 memset(sr, 0, sizeof(*sr));
 if (ssid[0] != '\0')
  strlcpy(sr->ssid, ssid, IEEE80211_NWID_LEN + 1);
 memcpy(sr->bssid, bssid, IEEE80211_ADDR_LEN);

 return (sr);
}
