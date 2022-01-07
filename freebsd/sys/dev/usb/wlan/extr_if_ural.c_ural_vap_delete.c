
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ural_vap {int ratectl_task; int ratectl_ch; } ;
struct ieee80211vap {struct ieee80211com* iv_ic; } ;
struct ieee80211com {int dummy; } ;


 int M_80211_VAP ;
 struct ural_vap* URAL_VAP (struct ieee80211vap*) ;
 int free (struct ural_vap*,int ) ;
 int ieee80211_draintask (struct ieee80211com*,int *) ;
 int ieee80211_ratectl_deinit (struct ieee80211vap*) ;
 int ieee80211_vap_detach (struct ieee80211vap*) ;
 int usb_callout_drain (int *) ;

__attribute__((used)) static void
ural_vap_delete(struct ieee80211vap *vap)
{
 struct ural_vap *uvp = URAL_VAP(vap);
 struct ieee80211com *ic = vap->iv_ic;

 usb_callout_drain(&uvp->ratectl_ch);
 ieee80211_draintask(ic, &uvp->ratectl_task);
 ieee80211_ratectl_deinit(vap);
 ieee80211_vap_detach(vap);
 free(uvp, M_80211_VAP);
}
