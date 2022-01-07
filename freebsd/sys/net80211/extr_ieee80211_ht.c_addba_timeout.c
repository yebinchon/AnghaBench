
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211com {int (* ic_addba_response_timeout ) (struct ieee80211_node*,struct ieee80211_tx_ampdu*) ;} ;
struct ieee80211_tx_ampdu {int txa_attempts; int txa_flags; struct ieee80211_node* txa_ni; } ;
struct ieee80211_node {struct ieee80211com* ni_ic; } ;


 int IEEE80211_AGGR_XCHGPEND ;
 int stub1 (struct ieee80211_node*,struct ieee80211_tx_ampdu*) ;

__attribute__((used)) static void
addba_timeout(void *arg)
{
 struct ieee80211_tx_ampdu *tap = arg;
 struct ieee80211_node *ni = tap->txa_ni;
 struct ieee80211com *ic = ni->ni_ic;


 tap->txa_flags &= ~IEEE80211_AGGR_XCHGPEND;
 tap->txa_attempts++;
 ic->ic_addba_response_timeout(ni, tap);
}
