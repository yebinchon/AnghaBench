
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sta_table {int dummy; } ;
struct ieee80211_scan_state {struct sta_table* ss_priv; } ;


 int IEEE80211_FREE (struct sta_table*,int ) ;
 int IEEE80211_SCAN_ITER_LOCK_DESTROY (struct sta_table*) ;
 int IEEE80211_SCAN_TABLE_LOCK_DESTROY (struct sta_table*) ;
 int KASSERT (int,char*) ;
 int M_80211_SCAN ;
 scalar_t__ nrefs ;
 int sta_flush_table (struct sta_table*) ;

__attribute__((used)) static int
sta_detach(struct ieee80211_scan_state *ss)
{
 struct sta_table *st = ss->ss_priv;

 if (st != ((void*)0)) {
  sta_flush_table(st);
  IEEE80211_SCAN_TABLE_LOCK_DESTROY(st);
  IEEE80211_SCAN_ITER_LOCK_DESTROY(st);
  IEEE80211_FREE(st, M_80211_SCAN);
  KASSERT(nrefs > 0, ("imbalanced attach/detach"));
  nrefs--;
 }
 return 1;
}
