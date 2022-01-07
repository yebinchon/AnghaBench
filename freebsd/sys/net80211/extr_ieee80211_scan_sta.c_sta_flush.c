
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sta_table {int dummy; } ;
struct ieee80211_scan_state {scalar_t__ ss_last; struct sta_table* ss_priv; } ;


 int IEEE80211_SCAN_TABLE_LOCK (struct sta_table*) ;
 int IEEE80211_SCAN_TABLE_UNLOCK (struct sta_table*) ;
 int sta_flush_table (struct sta_table*) ;

__attribute__((used)) static int
sta_flush(struct ieee80211_scan_state *ss)
{
 struct sta_table *st = ss->ss_priv;

 IEEE80211_SCAN_TABLE_LOCK(st);
 sta_flush_table(st);
 IEEE80211_SCAN_TABLE_UNLOCK(st);
 ss->ss_last = 0;
 return 0;
}
