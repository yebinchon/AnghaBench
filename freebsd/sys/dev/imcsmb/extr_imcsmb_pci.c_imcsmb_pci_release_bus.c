
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct imcsmb_pci_softc {int semaphore; } ;
typedef int device_t ;


 int atomic_store_rel_int (int *,int ) ;
 struct imcsmb_pci_softc* device_get_softc (int ) ;

void
imcsmb_pci_release_bus(device_t dev)
{
 struct imcsmb_pci_softc *sc;

 sc = device_get_softc(dev);






 atomic_store_rel_int(&sc->semaphore, 0);
}
