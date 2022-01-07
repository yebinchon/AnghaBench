
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtwn_softc {scalar_t__ qfullmsk; } ;
struct ieee80211vap {int dummy; } ;


 int RTWN_PCI_NTXQUEUES ;
 int rtwn_pci_reset_rx_list (struct rtwn_softc*) ;
 int rtwn_pci_reset_tx_list (struct rtwn_softc*,struct ieee80211vap*,int) ;

__attribute__((used)) static void
rtwn_pci_reset_lists(struct rtwn_softc *sc, struct ieee80211vap *vap)
{
 int i;

 for (i = 0; i < RTWN_PCI_NTXQUEUES; i++)
  rtwn_pci_reset_tx_list(sc, vap, i);

 if (vap == ((void*)0)) {
  sc->qfullmsk = 0;
  rtwn_pci_reset_rx_list(sc);
 }
}
