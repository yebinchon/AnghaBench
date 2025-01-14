
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint32_t ;
struct wlan_scan_result {scalar_t__* ssid; scalar_t__* bssid; } ;


 size_t IEEE80211_ADDR_LEN ;
 size_t strlen (scalar_t__*) ;

__attribute__((used)) static int
wlan_scan_compare_result(struct wlan_scan_result *sr1,
    struct wlan_scan_result *sr2)
{
 uint32_t i;

 if (strlen(sr1->ssid) < strlen(sr2->ssid))
  return (-1);
 if (strlen(sr1->ssid) > strlen(sr2->ssid))
  return (1);

 for (i = 0; i < strlen(sr1->ssid) && i < strlen(sr2->ssid); i++) {
  if (sr1->ssid[i] < sr2->ssid[i])
   return (-1);
  if (sr1->ssid[i] > sr2->ssid[i])
   return (1);
 }

 for (i = 0; i < IEEE80211_ADDR_LEN; i++) {
  if (sr1->bssid[i] < sr2->bssid[i])
   return (-1);
  if (sr1->bssid[i] > sr2->bssid[i])
   return (1);
 }

 return (0);
}
