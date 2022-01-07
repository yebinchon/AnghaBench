
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iop_softc {int mtx; int r_mem; int r_irq; int handle; } ;
typedef int device_t ;


 int PCIR_BAR (int ) ;
 int SYS_RES_IRQ ;
 int SYS_RES_MEMORY ;
 int bus_generic_detach (int ) ;
 int bus_release_resource (int ,int ,int,int ) ;
 int bus_teardown_intr (int ,int ,int ) ;
 struct iop_softc* device_get_softc (int ) ;
 int mtx_destroy (int *) ;

__attribute__((used)) static int
iop_pci_detach(device_t dev)
{
    struct iop_softc *sc = device_get_softc(dev);
    int error;

    error = bus_generic_detach(dev);
    if (error)
     return (error);
    bus_teardown_intr(dev, sc->r_irq, sc->handle);
    bus_release_resource(dev, SYS_RES_IRQ, 0x00, sc->r_irq);
    bus_release_resource(dev, SYS_RES_MEMORY, PCIR_BAR(0), sc->r_mem);
    mtx_destroy(&sc->mtx);
    return (0);
}
