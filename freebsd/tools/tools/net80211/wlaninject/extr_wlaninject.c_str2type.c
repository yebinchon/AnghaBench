
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int IEEE80211_FC0_TYPE_CTL ;
 int IEEE80211_FC0_TYPE_DATA ;
 int IEEE80211_FC0_TYPE_MGT ;
 int IEEE80211_FC0_TYPE_SHIFT ;
 int atoi (char const*) ;
 scalar_t__ equal (char const*,char*) ;

int str2type(const char *type)
{

 if ((strcasecmp(type,"mgt") == 0))
  return IEEE80211_FC0_TYPE_MGT >> IEEE80211_FC0_TYPE_SHIFT;
 else if ((strcasecmp(type,"ctl") == 0))
  return IEEE80211_FC0_TYPE_CTL >> IEEE80211_FC0_TYPE_SHIFT;
 else if ((strcasecmp(type,"data") == 0))
  return IEEE80211_FC0_TYPE_DATA >> IEEE80211_FC0_TYPE_SHIFT;

 return atoi(type) & 3;

}
