
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
struct ieee80211_node {int dummy; } ;
struct ieee80211_ie_htinfo {int dummy; } ;


 scalar_t__ const IEEE80211_ELEMID_VENDOR ;
 int htinfo_parse (struct ieee80211_node*,struct ieee80211_ie_htinfo const*) ;

void
ieee80211_parse_htinfo(struct ieee80211_node *ni, const uint8_t *ie)
{
 if (ie[0] == IEEE80211_ELEMID_VENDOR)
  ie += 4;
 htinfo_parse(ni, (const struct ieee80211_ie_htinfo *) ie);
}
