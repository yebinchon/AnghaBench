
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int IEEE80211_FC0_SUBTYPE_ASSOC_REQ ;
 int IEEE80211_FC0_SUBTYPE_AUTH ;
 int IEEE80211_FC0_SUBTYPE_DATA ;
 int IEEE80211_FC0_SUBTYPE_PROBE_REQ ;
 int IEEE80211_FC0_SUBTYPE_SHIFT ;
 int atoi (char const*) ;
 scalar_t__ equal (char const*,char*) ;

int str2subtype(const char *subtype)
{

 if ((strcasecmp(subtype,"preq") == 0) || (strcasecmp(subtype,"probereq") == 0))
  return IEEE80211_FC0_SUBTYPE_PROBE_REQ >>
         IEEE80211_FC0_SUBTYPE_SHIFT;
 else if ((strcasecmp(subtype,"auth") == 0))
  return IEEE80211_FC0_SUBTYPE_AUTH >>
         IEEE80211_FC0_SUBTYPE_SHIFT;
 else if ((strcasecmp(subtype,"areq") == 0) || (strcasecmp(subtype,"assocreq") == 0))
  return IEEE80211_FC0_SUBTYPE_ASSOC_REQ >>
         IEEE80211_FC0_SUBTYPE_SHIFT;
 else if ((strcasecmp(subtype,"data") == 0))
  return IEEE80211_FC0_SUBTYPE_DATA >>
         IEEE80211_FC0_SUBTYPE_SHIFT;

 return atoi(subtype) & 0xf;

}
