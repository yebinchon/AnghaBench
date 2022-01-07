
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sta_table {int st_entry; } ;
struct ieee80211_scan_state {struct sta_table* ss_priv; } ;


 scalar_t__ IEEE80211_MALLOC (int,int ,int) ;
 int IEEE80211_M_NOWAIT ;
 int IEEE80211_M_ZERO ;
 int IEEE80211_SCAN_ITER_LOCK_INIT (struct sta_table*,char*) ;
 int IEEE80211_SCAN_TABLE_LOCK_INIT (struct sta_table*,char*) ;
 int M_80211_SCAN ;
 int TAILQ_INIT (int *) ;
 int nrefs ;

__attribute__((used)) static int
sta_attach(struct ieee80211_scan_state *ss)
{
 struct sta_table *st;

 st = (struct sta_table *) IEEE80211_MALLOC(sizeof(struct sta_table),
  M_80211_SCAN,
  IEEE80211_M_NOWAIT | IEEE80211_M_ZERO);
 if (st == ((void*)0))
  return 0;
 IEEE80211_SCAN_TABLE_LOCK_INIT(st, "scantable");
 IEEE80211_SCAN_ITER_LOCK_INIT(st, "scangen");
 TAILQ_INIT(&st->st_entry);
 ss->ss_priv = st;
 nrefs++;
 return 1;
}
