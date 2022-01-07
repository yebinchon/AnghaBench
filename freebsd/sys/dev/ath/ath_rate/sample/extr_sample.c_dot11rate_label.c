
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* info; } ;
struct TYPE_4__ {scalar_t__ phy; } ;
typedef TYPE_2__ HAL_RATE_TABLE ;


 scalar_t__ IEEE80211_T_HT ;

__attribute__((used)) static const char *
dot11rate_label(const HAL_RATE_TABLE *rt, int rix)
{
 if (rix < 0)
  return "";
 return rt->info[rix].phy == IEEE80211_T_HT ? "MCS" : "Mb ";
}
