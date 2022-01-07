
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211vap {int iv_rs; } ;


 int IEEE80211_FREE (int ,int ) ;
 int KASSERT (int,char*) ;
 int M_80211_RATECTL ;
 scalar_t__ nrefs ;

__attribute__((used)) static void
amrr_deinit(struct ieee80211vap *vap)
{
 IEEE80211_FREE(vap->iv_rs, M_80211_RATECTL);
 KASSERT(nrefs > 0, ("imbalanced attach/detach"));
 nrefs--;
}
