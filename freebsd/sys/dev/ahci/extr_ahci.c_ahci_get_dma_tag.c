
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ahci_controller {int dma_tag; } ;
typedef int device_t ;
typedef int bus_dma_tag_t ;


 struct ahci_controller* device_get_softc (int ) ;

bus_dma_tag_t
ahci_get_dma_tag(device_t dev, device_t child)
{
 struct ahci_controller *ctlr = device_get_softc(dev);

 return (ctlr->dma_tag);
}
