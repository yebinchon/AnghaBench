
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwi_vap {int dummy; } ;
struct ieee80211vap {int dummy; } ;


 struct iwi_vap* IWI_VAP (struct ieee80211vap*) ;
 int M_80211_VAP ;
 int free (struct iwi_vap*,int ) ;
 int ieee80211_vap_detach (struct ieee80211vap*) ;

__attribute__((used)) static void
iwi_vap_delete(struct ieee80211vap *vap)
{
 struct iwi_vap *ivp = IWI_VAP(vap);

 ieee80211_vap_detach(vap);
 free(ivp, M_80211_VAP);
}
