
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scanlookup {scalar_t__ esslen; struct ieee80211_scan_entry const* se; int essid; int mac; } ;
struct ieee80211_scan_entry {scalar_t__* se_ssid; int se_macaddr; } ;


 int IEEE80211_ADDR_EQ (int ,int ) ;
 scalar_t__ memcmp (int ,scalar_t__*,scalar_t__) ;

__attribute__((used)) static void
mlmelookup(void *arg, const struct ieee80211_scan_entry *se)
{
 struct scanlookup *look = arg;

 if (!IEEE80211_ADDR_EQ(look->mac, se->se_macaddr))
  return;
 if (look->esslen != 0) {
  if (se->se_ssid[1] != look->esslen)
   return;
  if (memcmp(look->essid, se->se_ssid+2, look->esslen))
   return;
 }
 look->se = se;
}
