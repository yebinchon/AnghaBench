
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;
struct ieee80211com {int dummy; } ;
struct ieee80211_node {int ni_vap; } ;
struct ieee80211_frame_min {int dummy; } ;
struct ieee80211_frame {int dummy; } ;


 struct ieee80211_node* ieee80211_find_rxnode (struct ieee80211com*,struct ieee80211_frame_min const*) ;
 int ieee80211_free_node (struct ieee80211_node*) ;
 int ieee80211_notify_michael_failure (int ,struct ieee80211_frame const*,int ) ;

__attribute__((used)) static void
mwl_handlemicerror(struct ieee80211com *ic, const uint8_t *data)
{
 const struct ieee80211_frame *wh;
 struct ieee80211_node *ni;

 wh = (const struct ieee80211_frame *)(data + sizeof(uint16_t));
 ni = ieee80211_find_rxnode(ic, (const struct ieee80211_frame_min *) wh);
 if (ni != ((void*)0)) {
  ieee80211_notify_michael_failure(ni->ni_vap, wh, 0);
  ieee80211_free_node(ni);
 }
}
