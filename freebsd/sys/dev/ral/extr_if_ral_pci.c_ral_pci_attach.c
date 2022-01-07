
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct rt2560_softc {int sc_invalid; int sc_sh; int sc_st; } ;
struct TYPE_5__ {struct rt2560_softc sc_rt2560; } ;
struct ral_pci_softc {int sc_ih; TYPE_2__* sc_opns; int * irq; int * mem; TYPE_1__ u; } ;
typedef int device_t ;
struct TYPE_6__ {int (* attach ) (int ,int) ;int intr; } ;


 int ENXIO ;
 int INTR_MPSAFE ;
 int INTR_TYPE_NET ;
 int PCIR_BAR (int ) ;
 int RF_ACTIVE ;
 int RF_SHAREABLE ;
 int SYS_RES_IRQ ;
 int SYS_RES_MEMORY ;
 void* bus_alloc_resource_any (int ,int ,int*,int) ;
 int bus_release_resource (int ,int ,int ,int *) ;
 int bus_setup_intr (int ,int *,int,int *,int ,struct ral_pci_softc*,int *) ;
 struct ral_pci_softc* device_get_softc (int ) ;
 int device_printf (int ,char*) ;
 scalar_t__ pci_alloc_msi (int ,int*) ;
 int pci_enable_busmaster (int ) ;
 int pci_get_device (int ) ;
 int pci_release_msi (int ) ;
 scalar_t__ ral_msi_disable ;
 int ral_pci_detach (int ) ;
 TYPE_2__ ral_rt2560_opns ;
 TYPE_2__ ral_rt2661_opns ;
 TYPE_2__ ral_rt2860_opns ;
 int rman_get_bushandle (int *) ;
 int rman_get_bustag (int *) ;
 int rman_get_rid (int *) ;
 int stub1 (int ,int) ;

__attribute__((used)) static int
ral_pci_attach(device_t dev)
{
 struct ral_pci_softc *psc = device_get_softc(dev);
 struct rt2560_softc *sc = &psc->u.sc_rt2560;
 int count, error, rid;

 pci_enable_busmaster(dev);

 switch (pci_get_device(dev)) {
 case 0x0201:
  psc->sc_opns = &ral_rt2560_opns;
  break;
 case 0x0301:
 case 0x0302:
 case 0x0401:
  psc->sc_opns = &ral_rt2661_opns;
  break;
 default:
  psc->sc_opns = &ral_rt2860_opns;
  break;
 }

 rid = PCIR_BAR(0);
 psc->mem = bus_alloc_resource_any(dev, SYS_RES_MEMORY, &rid,
     RF_ACTIVE);
 if (psc->mem == ((void*)0)) {
  device_printf(dev, "could not allocate memory resource\n");
  return ENXIO;
 }

 sc->sc_st = rman_get_bustag(psc->mem);
 sc->sc_sh = rman_get_bushandle(psc->mem);
 sc->sc_invalid = 1;

 rid = 0;
 if (ral_msi_disable == 0) {
  count = 1;
  if (pci_alloc_msi(dev, &count) == 0)
   rid = 1;
 }
 psc->irq = bus_alloc_resource_any(dev, SYS_RES_IRQ, &rid, RF_ACTIVE |
     (rid != 0 ? 0 : RF_SHAREABLE));
 if (psc->irq == ((void*)0)) {
  device_printf(dev, "could not allocate interrupt resource\n");
  pci_release_msi(dev);
  bus_release_resource(dev, SYS_RES_MEMORY,
      rman_get_rid(psc->mem), psc->mem);
  return ENXIO;
 }

 error = (*psc->sc_opns->attach)(dev, pci_get_device(dev));
 if (error != 0) {
  (void)ral_pci_detach(dev);
  return error;
 }




 error = bus_setup_intr(dev, psc->irq, INTR_TYPE_NET | INTR_MPSAFE,
     ((void*)0), psc->sc_opns->intr, psc, &psc->sc_ih);
 if (error != 0) {
  device_printf(dev, "could not set up interrupt\n");
  (void)ral_pci_detach(dev);
  return error;
 }
 sc->sc_invalid = 0;

 return 0;
}
