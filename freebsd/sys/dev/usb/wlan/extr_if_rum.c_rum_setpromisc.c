
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211com {scalar_t__ ic_promisc; } ;
struct rum_softc {struct ieee80211com sc_ic; } ;


 int DPRINTF (char*,char*) ;
 int RT2573_DROP_NOT_TO_ME ;
 int RT2573_TXRX_CSR0 ;
 int rum_clrbits (struct rum_softc*,int ,int ) ;
 int rum_setbits (struct rum_softc*,int ,int ) ;

__attribute__((used)) static void
rum_setpromisc(struct rum_softc *sc)
{
 struct ieee80211com *ic = &sc->sc_ic;

 if (ic->ic_promisc == 0)
  rum_setbits(sc, RT2573_TXRX_CSR0, RT2573_DROP_NOT_TO_ME);
 else
  rum_clrbits(sc, RT2573_TXRX_CSR0, RT2573_DROP_NOT_TO_ME);

 DPRINTF("%s promiscuous mode\n", ic->ic_promisc > 0 ?
     "entering" : "leaving");
}
