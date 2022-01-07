
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ata_pci_controller {struct ata_intel_data* chipset_data; } ;
struct ata_intel_data {int lock; } ;
typedef int device_t ;


 int M_ATAPCI ;
 struct ata_pci_controller* device_get_softc (int ) ;
 int free (struct ata_intel_data*,int ) ;
 int mtx_destroy (int *) ;

__attribute__((used)) static int
ata_intel_chipdeinit(device_t dev)
{
 struct ata_pci_controller *ctlr = device_get_softc(dev);
 struct ata_intel_data *data;

 data = ctlr->chipset_data;
 mtx_destroy(&data->lock);
 free(data, M_ATAPCI);
 ctlr->chipset_data = ((void*)0);
 return (0);
}
