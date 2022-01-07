
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_ratectl {int dummy; } ;


 int IEEE80211_RATECTL_MAX ;
 struct ieee80211_ratectl const** ratectls ;

void
ieee80211_ratectl_register(int type, const struct ieee80211_ratectl *ratectl)
{
 if (type >= IEEE80211_RATECTL_MAX)
  return;
 ratectls[type] = ratectl;
}
