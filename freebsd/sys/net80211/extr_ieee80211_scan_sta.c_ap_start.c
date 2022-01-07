
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sta_table {int st_newscan; int st_scangen; } ;
struct ieee80211vap {int dummy; } ;
struct ieee80211_scan_state {scalar_t__ ss_mindwell; scalar_t__ ss_maxdwell; struct sta_table* ss_priv; } ;


 int makescanlist (struct ieee80211_scan_state*,struct ieee80211vap*,int ) ;
 void* msecs_to_ticks (int) ;
 int staScanTable ;

__attribute__((used)) static int
ap_start(struct ieee80211_scan_state *ss, struct ieee80211vap *vap)
{
 struct sta_table *st = ss->ss_priv;

 makescanlist(ss, vap, staScanTable);

 if (ss->ss_mindwell == 0)
  ss->ss_mindwell = msecs_to_ticks(200);
 if (ss->ss_maxdwell == 0)
  ss->ss_maxdwell = msecs_to_ticks(200);

 st->st_scangen++;
 st->st_newscan = 1;

 return 0;
}
