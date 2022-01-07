
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct ieee80211_scan_ssid {int len; int ssid; } ;


 scalar_t__ match_id (int const*,int ,int ) ;

__attribute__((used)) static int
match_ssid(const uint8_t *ie,
 int nssid, const struct ieee80211_scan_ssid ssids[])
{
 int i;

 for (i = 0; i < nssid; i++) {
  if (match_id(ie, ssids[i].ssid, ssids[i].len))
   return 1;
 }
 return 0;
}
