
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct ieee80211com {int ic_name; } ;
struct rtwn_softc {int sc_mtx; int sc_dev; struct ieee80211com sc_ic; } ;
struct rtwn_pci_softc {int pc_ih; int * irq; int * mem; int pc_sh; int pc_st; struct rtwn_softc pc_sc; } ;
struct rtwn_pci_ident {int chip; } ;
typedef int device_t ;


 int ENOMEM ;
 int ENXIO ;
 int INTR_MPSAFE ;
 int INTR_TYPE_NET ;
 int MTX_DEF ;
 int MTX_NETWORK_LOCK ;
 int PCIEM_LINK_CTL_ASPMC ;
 scalar_t__ PCIER_LINK_CTL ;
 int PCIR_BAR (int) ;
 int PCIY_EXPRESS ;
 int RF_ACTIVE ;
 int RF_SHAREABLE ;
 int RTWN_PCI_NTXQUEUES ;
 int SYS_RES_IRQ ;
 int SYS_RES_MEMORY ;
 void* bus_alloc_resource_any (int ,int ,int*,int) ;
 int bus_setup_intr (int ,int *,int,int *,int ,struct rtwn_softc*,int *) ;
 int device_get_nameunit (int ) ;
 struct rtwn_pci_softc* device_get_softc (int ) ;
 int device_printf (int ,char*,...) ;
 int mtx_init (int *,int ,int ,int ) ;
 scalar_t__ pci_alloc_msi (int ,int*) ;
 int pci_enable_busmaster (int ) ;
 int pci_find_cap (int ,int ,int*) ;
 int pci_read_config (int ,scalar_t__,int) ;
 int pci_write_config (int ,scalar_t__,int ,int) ;
 int rman_get_bushandle (int *) ;
 int rman_get_bustag (int *) ;
 int rtwn_attach (struct rtwn_softc*) ;
 int rtwn_pci_alloc_rx_list (struct rtwn_softc*) ;
 int rtwn_pci_alloc_tx_list (struct rtwn_softc*,int) ;
 int rtwn_pci_attach_methods (struct rtwn_softc*) ;
 int rtwn_pci_attach_private (struct rtwn_pci_softc*,int ) ;
 int rtwn_pci_detach (int ) ;
 int rtwn_pci_intr ;
 struct rtwn_pci_ident* rtwn_pci_probe_sub (int ) ;
 int rtwn_sysctlattach (struct rtwn_softc*) ;

__attribute__((used)) static int
rtwn_pci_attach(device_t dev)
{
 const struct rtwn_pci_ident *ident;
 struct rtwn_pci_softc *pc = device_get_softc(dev);
 struct rtwn_softc *sc = &pc->pc_sc;
 struct ieee80211com *ic = &sc->sc_ic;
 uint32_t lcsr;
 int cap_off, i, error, rid;

 ident = rtwn_pci_probe_sub(dev);
 if (ident == ((void*)0))
  return (ENXIO);





 error = pci_find_cap(dev, PCIY_EXPRESS, &cap_off);
 if (error != 0) {
  device_printf(dev, "PCIe capability structure not found!\n");
  return (error);
 }


 pci_enable_busmaster(dev);

 rid = PCIR_BAR(2);
 pc->mem = bus_alloc_resource_any(dev, SYS_RES_MEMORY, &rid,
     RF_ACTIVE);
 if (pc->mem == ((void*)0)) {
  device_printf(dev, "can't map mem space\n");
  return (ENOMEM);
 }
 pc->pc_st = rman_get_bustag(pc->mem);
 pc->pc_sh = rman_get_bushandle(pc->mem);


 rid = 1;
 if (pci_alloc_msi(dev, &rid) == 0)
  rid = 1;
 else
  rid = 0;
 pc->irq = bus_alloc_resource_any(dev, SYS_RES_IRQ, &rid, RF_ACTIVE |
     (rid != 0 ? 0 : RF_SHAREABLE));
 if (pc->irq == ((void*)0)) {
  device_printf(dev, "can't map interrupt\n");
  goto detach;
 }


 lcsr = pci_read_config(dev, cap_off + PCIER_LINK_CTL, 4);
 lcsr &= ~PCIEM_LINK_CTL_ASPMC;
 pci_write_config(dev, cap_off + PCIER_LINK_CTL, lcsr, 4);

 sc->sc_dev = dev;
 ic->ic_name = device_get_nameunit(dev);


 rtwn_sysctlattach(sc);
 mtx_init(&sc->sc_mtx, ic->ic_name, MTX_NETWORK_LOCK, MTX_DEF);

 rtwn_pci_attach_methods(sc);
 rtwn_pci_attach_private(pc, ident->chip);


 error = rtwn_pci_alloc_rx_list(sc);
 if (error != 0) {
  device_printf(dev,
      "could not allocate Rx buffers, error %d\n",
      error);
  goto detach;
 }
 for (i = 0; i < RTWN_PCI_NTXQUEUES; i++) {
  error = rtwn_pci_alloc_tx_list(sc, i);
  if (error != 0) {
   device_printf(dev,
       "could not allocate Tx buffers, error %d\n",
       error);
   goto detach;
  }
 }


 error = rtwn_attach(sc);
 if (error != 0)
  goto detach;




 error = bus_setup_intr(dev, pc->irq, INTR_TYPE_NET | INTR_MPSAFE,
     ((void*)0), rtwn_pci_intr, sc, &pc->pc_ih);
 if (error != 0) {
  device_printf(dev, "can't establish interrupt, error %d\n",
      error);
  goto detach;
 }

 return (0);

detach:
 rtwn_pci_detach(dev);
 return (ENXIO);
}
