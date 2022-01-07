
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ieee80211com {struct ieee80211_scan_state* ic_scan; } ;
struct ieee80211_scan_state {TYPE_1__* ss_ops; } ;
struct TYPE_2__ {int (* scan_age ) (struct ieee80211_scan_state*) ;} ;


 int stub1 (struct ieee80211_scan_state*) ;

void
ieee80211_scan_timeout(struct ieee80211com *ic)
{
 struct ieee80211_scan_state *ss = ic->ic_scan;

 if (ss->ss_ops != ((void*)0))
  ss->ss_ops->scan_age(ss);
}
