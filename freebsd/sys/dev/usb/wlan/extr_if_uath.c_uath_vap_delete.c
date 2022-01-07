
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uath_vap {int dummy; } ;
struct ieee80211vap {int dummy; } ;


 int M_80211_VAP ;
 struct uath_vap* UATH_VAP (struct ieee80211vap*) ;
 int free (struct uath_vap*,int ) ;
 int ieee80211_vap_detach (struct ieee80211vap*) ;

__attribute__((used)) static void
uath_vap_delete(struct ieee80211vap *vap)
{
 struct uath_vap *uvp = UATH_VAP(vap);

 ieee80211_vap_detach(vap);
 free(uvp, M_80211_VAP);
}
