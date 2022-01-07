
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct rt2560_softc {int sc_invalid; } ;
struct TYPE_4__ {struct rt2560_softc sc_rt2560; } ;
struct ral_pci_softc {int mem; int irq; TYPE_1__* sc_opns; int * sc_ih; TYPE_2__ u; } ;
typedef int device_t ;
struct TYPE_3__ {int (* detach ) (struct ral_pci_softc*) ;} ;


 int SYS_RES_IRQ ;
 int SYS_RES_MEMORY ;
 int bus_child_present (int ) ;
 int bus_generic_detach (int ) ;
 int bus_release_resource (int ,int ,int ,int ) ;
 int bus_teardown_intr (int ,int ,int *) ;
 struct ral_pci_softc* device_get_softc (int ) ;
 int pci_release_msi (int ) ;
 int rman_get_rid (int ) ;
 int stub1 (struct ral_pci_softc*) ;

__attribute__((used)) static int
ral_pci_detach(device_t dev)
{
 struct ral_pci_softc *psc = device_get_softc(dev);
 struct rt2560_softc *sc = &psc->u.sc_rt2560;


 sc->sc_invalid = !bus_child_present(dev);

 if (psc->sc_ih != ((void*)0))
  bus_teardown_intr(dev, psc->irq, psc->sc_ih);
 (*psc->sc_opns->detach)(psc);

 bus_generic_detach(dev);
 bus_release_resource(dev, SYS_RES_IRQ, rman_get_rid(psc->irq),
     psc->irq);
 pci_release_msi(dev);

 bus_release_resource(dev, SYS_RES_MEMORY, rman_get_rid(psc->mem),
     psc->mem);

 return 0;
}
