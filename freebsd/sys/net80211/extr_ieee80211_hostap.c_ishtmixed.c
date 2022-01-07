
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct ieee80211_ie_htinfo {int hi_byte2; } ;


 int IEEE80211_HTINFO_OPMODE ;
 int IEEE80211_HTINFO_OPMODE_MIXED ;

__attribute__((used)) static __inline int
ishtmixed(const uint8_t *ie)
{
 const struct ieee80211_ie_htinfo *ht =
     (const struct ieee80211_ie_htinfo *) ie;
 return (ht->hi_byte2 & IEEE80211_HTINFO_OPMODE) ==
     IEEE80211_HTINFO_OPMODE_MIXED;
}
