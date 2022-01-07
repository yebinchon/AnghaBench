
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int IEEE80211_RATECTL_MAX ;
 int ** ratectls ;

void
ieee80211_ratectl_unregister(int type)
{
 if (type >= IEEE80211_RATECTL_MAX)
  return;
 ratectls[type] = ((void*)0);
}
