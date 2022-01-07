
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_5__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int * bdev; } ;
struct TYPE_6__ {TYPE_5__ fc; scalar_t__ bsh; scalar_t__ bst; int * bsr; int * irq_res; int * ih; } ;
typedef TYPE_1__ fwohci_softc_t ;
typedef int device_t ;


 int FWOHCI_INTMASKCLR ;
 int FW_GMTX (TYPE_5__*) ;
 int OHCI_INT_EN ;
 int PCI_CBMEM ;
 int SYS_RES_IRQ ;
 int SYS_RES_MEMORY ;
 int bus_generic_detach (int ) ;
 int bus_release_resource (int ,int ,int ,int *) ;
 int bus_space_write_4 (scalar_t__,scalar_t__,int ,int ) ;
 int bus_teardown_intr (int ,int *,int *) ;
 int device_delete_child (int ,int *) ;
 TYPE_1__* device_get_softc (int ) ;
 int device_printf (int ,char*,int) ;
 int fwohci_detach (TYPE_1__*,int ) ;
 int fwohci_stop (TYPE_1__*,int ) ;
 int mtx_destroy (int ) ;
 int splfw () ;
 int splx (int) ;

__attribute__((used)) static int
fwohci_pci_detach(device_t self)
{
 fwohci_softc_t *sc = device_get_softc(self);
 int s;

 s = splfw();

 if (sc->bsr)
  fwohci_stop(sc, self);

 bus_generic_detach(self);

 if (sc->fc.bdev) {
  device_delete_child(self, sc->fc.bdev);
  sc->fc.bdev = ((void*)0);
 }


 if (sc->bst && sc->bsh)
  bus_space_write_4(sc->bst, sc->bsh,
      FWOHCI_INTMASKCLR, OHCI_INT_EN);

 if (sc->irq_res) {
  int err;
  if (sc->ih) {
   err = bus_teardown_intr(self, sc->irq_res, sc->ih);
   if (err)
    device_printf(self,
      "Could not tear down irq, %d\n", err);
   sc->ih = ((void*)0);
  }
  bus_release_resource(self, SYS_RES_IRQ, 0, sc->irq_res);
  sc->irq_res = ((void*)0);
 }

 if (sc->bsr) {
  bus_release_resource(self, SYS_RES_MEMORY, PCI_CBMEM, sc->bsr);
  sc->bsr = ((void*)0);
  sc->bst = 0;
  sc->bsh = 0;
 }

 fwohci_detach(sc, self);
 mtx_destroy(FW_GMTX(&sc->fc));
 splx(s);

 return 0;
}
