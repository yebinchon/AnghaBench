
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtwn_softc {int sc_mtx; } ;
struct rtwn_pci_softc {int * mem; int * irq; int pc_ih; struct rtwn_softc pc_sc; } ;
typedef int device_t ;


 int RTWN_PCI_NTXQUEUES ;
 int SYS_RES_IRQ ;
 int SYS_RES_MEMORY ;
 int bus_release_resource (int ,int ,int ,int *) ;
 int bus_teardown_intr (int ,int *,int ) ;
 struct rtwn_pci_softc* device_get_softc (int ) ;
 int mtx_destroy (int *) ;
 int pci_release_msi (int ) ;
 int rman_get_rid (int *) ;
 int rtwn_detach (struct rtwn_softc*) ;
 int rtwn_detach_private (struct rtwn_softc*) ;
 int rtwn_pci_free_rx_list (struct rtwn_softc*) ;
 int rtwn_pci_free_tx_list (struct rtwn_softc*,int) ;

__attribute__((used)) static int
rtwn_pci_detach(device_t dev)
{
 struct rtwn_pci_softc *pc = device_get_softc(dev);
 struct rtwn_softc *sc = &pc->pc_sc;
 int i;


 rtwn_detach(sc);


 if (pc->irq != ((void*)0)) {
  bus_teardown_intr(dev, pc->irq, pc->pc_ih);
  bus_release_resource(dev, SYS_RES_IRQ, rman_get_rid(pc->irq),
      pc->irq);
  pci_release_msi(dev);
 }


 for (i = 0; i < RTWN_PCI_NTXQUEUES; i++)
  rtwn_pci_free_tx_list(sc, i);
 rtwn_pci_free_rx_list(sc);

 if (pc->mem != ((void*)0))
  bus_release_resource(dev, SYS_RES_MEMORY,
      rman_get_rid(pc->mem), pc->mem);

 rtwn_detach_private(sc);
 mtx_destroy(&sc->sc_mtx);

 return (0);
}
