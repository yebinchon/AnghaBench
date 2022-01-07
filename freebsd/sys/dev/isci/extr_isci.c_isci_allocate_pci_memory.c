
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct isci_softc {int device; struct ISCI_PCI_BAR* pci_bar; } ;
struct ISCI_PCI_BAR {int * resource; int bus_handle; int bus_tag; int resource_id; } ;


 int ISCI_NUM_PCI_BARS ;
 int PCIR_BAR (int) ;
 int RF_ACTIVE ;
 int SYS_RES_MEMORY ;
 int * bus_alloc_resource_any (int ,int ,int *,int ) ;
 int isci_log_message (int ,char*,char*) ;
 int rman_get_bushandle (int *) ;
 int rman_get_bustag (int *) ;

__attribute__((used)) static int
isci_allocate_pci_memory(struct isci_softc *isci)
{
 int i;

 for (i = 0; i < ISCI_NUM_PCI_BARS; i++)
 {
  struct ISCI_PCI_BAR *pci_bar = &isci->pci_bar[i];

  pci_bar->resource_id = PCIR_BAR(i*2);
  pci_bar->resource = bus_alloc_resource_any(isci->device,
      SYS_RES_MEMORY, &pci_bar->resource_id,
      RF_ACTIVE);

  if(pci_bar->resource == ((void*)0))
   isci_log_message(0, "ISCI",
       "unable to allocate pci resource\n");
  else {
   pci_bar->bus_tag = rman_get_bustag(pci_bar->resource);
   pci_bar->bus_handle =
       rman_get_bushandle(pci_bar->resource);
  }
 }

 return (0);
}
