
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211vap {struct ieee80211_hwmp_state* iv_hwmp; } ;
struct ieee80211_hwmp_state {int hs_roottimer; } ;


 int IEEE80211_FREE (struct ieee80211_hwmp_state*,int ) ;
 int M_80211_VAP ;
 int callout_drain (int *) ;

__attribute__((used)) static void
hwmp_vdetach(struct ieee80211vap *vap)
{
 struct ieee80211_hwmp_state *hs = vap->iv_hwmp;

 callout_drain(&hs->hs_roottimer);
 IEEE80211_FREE(vap->iv_hwmp, M_80211_VAP);
 vap->iv_hwmp = ((void*)0);
}
