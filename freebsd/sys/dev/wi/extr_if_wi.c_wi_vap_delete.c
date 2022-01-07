
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wi_vap {int dummy; } ;
struct ieee80211vap {int dummy; } ;


 int M_80211_VAP ;
 struct wi_vap* WI_VAP (struct ieee80211vap*) ;
 int free (struct wi_vap*,int ) ;
 int ieee80211_vap_detach (struct ieee80211vap*) ;

__attribute__((used)) static void
wi_vap_delete(struct ieee80211vap *vap)
{
 struct wi_vap *wvp = WI_VAP(vap);

 ieee80211_vap_detach(vap);
 free(wvp, M_80211_VAP);
}
