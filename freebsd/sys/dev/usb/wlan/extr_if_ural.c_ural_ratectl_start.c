
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ural_vap {int ratectl_ch; } ;
struct ural_softc {int sta; } ;
struct ieee80211vap {int dummy; } ;
struct ieee80211_node {struct ieee80211vap* ni_vap; } ;


 int RAL_STA_CSR0 ;
 struct ural_vap* URAL_VAP (struct ieee80211vap*) ;
 int hz ;
 int ural_ratectl_timeout ;
 int ural_read_multi (struct ural_softc*,int ,int ,int) ;
 int usb_callout_reset (int *,int ,int ,struct ural_vap*) ;

__attribute__((used)) static void
ural_ratectl_start(struct ural_softc *sc, struct ieee80211_node *ni)
{
 struct ieee80211vap *vap = ni->ni_vap;
 struct ural_vap *uvp = URAL_VAP(vap);


 ural_read_multi(sc, RAL_STA_CSR0, sc->sta, sizeof sc->sta);

 usb_callout_reset(&uvp->ratectl_ch, hz, ural_ratectl_timeout, uvp);
}
