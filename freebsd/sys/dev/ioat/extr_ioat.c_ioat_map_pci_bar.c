
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ioat_softc {int * pci_resource; int pci_bus_handle; int pci_bus_tag; int pci_resource_id; int device; } ;


 int ENODEV ;
 int PCIR_BAR (int ) ;
 int RF_ACTIVE ;
 int SYS_RES_MEMORY ;
 int * bus_alloc_resource_any (int ,int ,int *,int ) ;
 int ioat_log_message (int ,char*) ;
 int rman_get_bushandle (int *) ;
 int rman_get_bustag (int *) ;

__attribute__((used)) static int
ioat_map_pci_bar(struct ioat_softc *ioat)
{

 ioat->pci_resource_id = PCIR_BAR(0);
 ioat->pci_resource = bus_alloc_resource_any(ioat->device,
     SYS_RES_MEMORY, &ioat->pci_resource_id, RF_ACTIVE);

 if (ioat->pci_resource == ((void*)0)) {
  ioat_log_message(0, "unable to allocate pci resource\n");
  return (ENODEV);
 }

 ioat->pci_bus_tag = rman_get_bustag(ioat->pci_resource);
 ioat->pci_bus_handle = rman_get_bushandle(ioat->pci_resource);
 return (0);
}
