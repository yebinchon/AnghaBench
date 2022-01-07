
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211com {int dummy; } ;
struct ieee80211_node {int ni_vap; } ;
struct ieee80211_frame_min {int dummy; } ;
struct ieee80211_frame {int dummy; } ;


 struct ieee80211_node* ieee80211_find_rxnode (struct ieee80211com*,struct ieee80211_frame_min const*) ;
 int ieee80211_free_node (struct ieee80211_node*) ;
 int ieee80211_notify_michael_failure (int ,struct ieee80211_frame*,int) ;

__attribute__((used)) static void
ath_handle_micerror(struct ieee80211com *ic,
 struct ieee80211_frame *wh, int keyix)
{
 struct ieee80211_node *ni;



 ni = ieee80211_find_rxnode(ic, (const struct ieee80211_frame_min *) wh);
 if (ni != ((void*)0)) {
  ieee80211_notify_michael_failure(ni->ni_vap, wh, keyix);
  ieee80211_free_node(ni);
 }
}
