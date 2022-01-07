
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211com {int ic_max_keyix; int ic_flags_ext; int ic_node_getmimoinfo; int ic_node_getsignal; int ic_node_getrssi; void* ic_node_drain; void* ic_node_age; int ic_node_cleanup; int ic_node_free; int ic_node_alloc; int ic_inact; int ic_sta; int ic_stageq; } ;


 int IEEE80211_FEXT_INACT ;
 int IEEE80211_INACT_INIT ;
 int IEEE80211_INACT_WAIT ;
 int callout_init (int *,int) ;
 int callout_reset (int *,int,int ,struct ieee80211com*) ;
 int hz ;
 int ieee80211_ageq_init (int *,int,char*) ;
 int ieee80211_node_table_init (struct ieee80211com*,int *,char*,int ,int) ;
 int ieee80211_node_timeout ;
 void* node_age ;
 int node_alloc ;
 int node_cleanup ;
 int node_free ;
 int node_getmimoinfo ;
 int node_getrssi ;
 int node_getsignal ;

void
ieee80211_node_attach(struct ieee80211com *ic)
{

 ieee80211_ageq_init(&ic->ic_stageq, ic->ic_max_keyix * 8,
     "802.11 staging q");
 ieee80211_node_table_init(ic, &ic->ic_sta, "station",
  IEEE80211_INACT_INIT, ic->ic_max_keyix);
 callout_init(&ic->ic_inact, 1);
 callout_reset(&ic->ic_inact, IEEE80211_INACT_WAIT*hz,
  ieee80211_node_timeout, ic);

 ic->ic_node_alloc = node_alloc;
 ic->ic_node_free = node_free;
 ic->ic_node_cleanup = node_cleanup;
 ic->ic_node_age = node_age;
 ic->ic_node_drain = node_age;
 ic->ic_node_getrssi = node_getrssi;
 ic->ic_node_getsignal = node_getsignal;
 ic->ic_node_getmimoinfo = node_getmimoinfo;





 ic->ic_flags_ext |= IEEE80211_FEXT_INACT;
}
