
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sta_table {int st_newscan; } ;
struct ieee80211vap {int dummy; } ;
struct ieee80211_scan_state {struct sta_table* ss_priv; } ;



__attribute__((used)) static int
sta_restart(struct ieee80211_scan_state *ss, struct ieee80211vap *vap)
{
 struct sta_table *st = ss->ss_priv;

 st->st_newscan = 1;
 return 0;
}
