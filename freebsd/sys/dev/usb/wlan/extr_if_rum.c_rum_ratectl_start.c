
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rum_vap {int ratectl_ch; } ;
struct rum_softc {int sta; } ;
struct ieee80211vap {int dummy; } ;
struct ieee80211_node {struct ieee80211vap* ni_vap; } ;


 int RT2573_STA_CSR0 ;
 struct rum_vap* RUM_VAP (struct ieee80211vap*) ;
 int hz ;
 int rum_ratectl_timeout ;
 int rum_read_multi (struct rum_softc*,int ,int ,int) ;
 int usb_callout_reset (int *,int ,int ,struct rum_vap*) ;

__attribute__((used)) static void
rum_ratectl_start(struct rum_softc *sc, struct ieee80211_node *ni)
{
 struct ieee80211vap *vap = ni->ni_vap;
 struct rum_vap *rvp = RUM_VAP(vap);


 rum_read_multi(sc, RT2573_STA_CSR0, sc->sta, sizeof sc->sta);

 usb_callout_reset(&rvp->ratectl_ch, hz, rum_ratectl_timeout, rvp);
}
