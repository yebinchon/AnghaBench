
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ieee80211vap {int iv_ps_sta; int (* iv_update_ps ) (struct ieee80211vap*,int ) ;int (* iv_set_tim ) (struct ieee80211_node*,int ) ;} ;
struct TYPE_2__ {scalar_t__ psq_len; } ;
struct ieee80211_node {int ni_flags; TYPE_1__ ni_psq; struct ieee80211vap* ni_vap; } ;


 int IEEE80211_MSG_POWER ;
 int IEEE80211_NODE_PWR_MGT ;
 int IEEE80211_NOTE (struct ieee80211vap*,int ,struct ieee80211_node*,char*,int ) ;
 int pwrsave_flushq (struct ieee80211_node*) ;
 int stub1 (struct ieee80211vap*,int ) ;
 int stub2 (struct ieee80211_node*,int ) ;
 int stub3 (struct ieee80211vap*,int ) ;

void
ieee80211_node_pwrsave(struct ieee80211_node *ni, int enable)
{
 struct ieee80211vap *vap = ni->ni_vap;
 int update;

 update = 0;
 if (enable) {
  if ((ni->ni_flags & IEEE80211_NODE_PWR_MGT) == 0) {
   vap->iv_ps_sta++;
   update = 1;
  }
  ni->ni_flags |= IEEE80211_NODE_PWR_MGT;
  IEEE80211_NOTE(vap, IEEE80211_MSG_POWER, ni,
      "power save mode on, %u sta's in ps mode", vap->iv_ps_sta);

  if (update)
   vap->iv_update_ps(vap, vap->iv_ps_sta);
 } else {
  if (ni->ni_flags & IEEE80211_NODE_PWR_MGT) {
   vap->iv_ps_sta--;
   update = 1;
  }
  ni->ni_flags &= ~IEEE80211_NODE_PWR_MGT;
  IEEE80211_NOTE(vap, IEEE80211_MSG_POWER, ni,
      "power save mode off, %u sta's in ps mode", vap->iv_ps_sta);


  if (vap->iv_set_tim != ((void*)0))
   vap->iv_set_tim(ni, 0);
  if (update) {

   vap->iv_update_ps(vap, vap->iv_ps_sta);
  }
  if (ni->ni_psq.psq_len != 0)
   pwrsave_flushq(ni);
 }
}
