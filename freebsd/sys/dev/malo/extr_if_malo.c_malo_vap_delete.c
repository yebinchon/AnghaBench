
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct malo_vap {int dummy; } ;
struct ieee80211vap {int dummy; } ;


 struct malo_vap* MALO_VAP (struct ieee80211vap*) ;
 int M_80211_VAP ;
 int free (struct malo_vap*,int ) ;
 int ieee80211_vap_detach (struct ieee80211vap*) ;

__attribute__((used)) static void
malo_vap_delete(struct ieee80211vap *vap)
{
 struct malo_vap *mvp = MALO_VAP(vap);

 ieee80211_vap_detach(vap);
 free(mvp, M_80211_VAP);
}
