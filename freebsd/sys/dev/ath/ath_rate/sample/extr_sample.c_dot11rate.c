
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* info; } ;
struct TYPE_4__ {scalar_t__ phy; int dot11Rate; } ;
typedef TYPE_2__ HAL_RATE_TABLE ;


 int IEEE80211_RATE_VAL ;
 scalar_t__ IEEE80211_T_HT ;

__attribute__((used)) static int
dot11rate(const HAL_RATE_TABLE *rt, int rix)
{
 if (rix < 0)
  return -1;
 return rt->info[rix].phy == IEEE80211_T_HT ?
     rt->info[rix].dot11Rate : (rt->info[rix].dot11Rate & IEEE80211_RATE_VAL) / 2;
}
