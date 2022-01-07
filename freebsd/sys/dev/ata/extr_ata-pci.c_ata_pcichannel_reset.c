
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ata_pci_controller {int (* reset ) (int ) ;} ;
struct TYPE_2__ {int (* reset ) (int ) ;} ;
struct ata_channel {TYPE_1__ dma; } ;
typedef int device_t ;


 int ata_generic_reset (int ) ;
 int device_get_parent (int ) ;
 void* device_get_softc (int ) ;
 int stub1 (int ) ;
 int stub2 (int ) ;

__attribute__((used)) static void
ata_pcichannel_reset(device_t dev)
{
    struct ata_pci_controller *ctlr = device_get_softc(device_get_parent(dev));
    struct ata_channel *ch = device_get_softc(dev);


    if (ch->dma.reset)
 ch->dma.reset(dev);


    if (ctlr->reset)
 ctlr->reset(dev);
    else
 ata_generic_reset(dev);
}
