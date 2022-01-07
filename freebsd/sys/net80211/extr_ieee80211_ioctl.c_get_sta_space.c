
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct stainforeq {int space; } ;
struct ieee80211_node {scalar_t__ ni_associd; TYPE_1__* ni_vap; } ;
struct TYPE_2__ {scalar_t__ iv_opmode; } ;


 scalar_t__ IEEE80211_M_HOSTAP ;
 scalar_t__ sta_space (struct ieee80211_node*,size_t*) ;

__attribute__((used)) static void
get_sta_space(void *arg, struct ieee80211_node *ni)
{
 struct stainforeq *req = arg;
 size_t ielen;

 if (ni->ni_vap->iv_opmode == IEEE80211_M_HOSTAP &&
     ni->ni_associd == 0)
  return;
 req->space += sta_space(ni, &ielen);
}
