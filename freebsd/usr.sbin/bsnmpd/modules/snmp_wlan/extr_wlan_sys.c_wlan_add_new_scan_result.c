
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct wlan_scan_result {int capinfo; int bintval; int noise; int frequency; int rssi; int opchannel; } ;
struct wlan_iface {int dummy; } ;
struct ieee80211req_scan_result {int isr_capinfo; int isr_intval; int isr_noise; int isr_freq; int isr_rssi; int isr_flags; int isr_bssid; } ;


 int wlan_channel_flags_to_snmp_phy (int ) ;
 int wlan_peercaps_to_snmp (int ) ;
 scalar_t__ wlan_scan_add_result (struct wlan_iface*,struct wlan_scan_result*) ;
 int wlan_scan_free_result (struct wlan_scan_result*) ;
 struct wlan_scan_result* wlan_scan_new_result (int *,int ) ;

__attribute__((used)) static int
wlan_add_new_scan_result(struct wlan_iface *wif,
    const struct ieee80211req_scan_result *isr, uint8_t *ssid)
{
 struct wlan_scan_result *sr;

 if ((sr = wlan_scan_new_result(ssid, isr->isr_bssid)) == ((void*)0))
  return (-1);

 sr->opchannel = wlan_channel_flags_to_snmp_phy(isr->isr_flags);
 sr->rssi = isr->isr_rssi;
 sr->frequency = isr->isr_freq;
 sr->noise = isr->isr_noise;
 sr->bintval = isr->isr_intval;
 sr->capinfo = wlan_peercaps_to_snmp(isr->isr_capinfo);

 if (wlan_scan_add_result(wif, sr) < 0) {
  wlan_scan_free_result(sr);
  return (-1);
 }

 return (0);
}
