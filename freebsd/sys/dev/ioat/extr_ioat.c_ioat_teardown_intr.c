
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ioat_softc {int device; int * res; int * tag; } ;


 int SYS_RES_IRQ ;
 int bus_release_resource (int ,int ,int ,int *) ;
 int bus_teardown_intr (int ,int *,int *) ;
 int pci_release_msi (int ) ;
 int rman_get_rid (int *) ;

__attribute__((used)) static int
ioat_teardown_intr(struct ioat_softc *ioat)
{

 if (ioat->tag != ((void*)0))
  bus_teardown_intr(ioat->device, ioat->res, ioat->tag);

 if (ioat->res != ((void*)0))
  bus_release_resource(ioat->device, SYS_RES_IRQ,
      rman_get_rid(ioat->res), ioat->res);

 pci_release_msi(ioat->device);
 return (0);
}
