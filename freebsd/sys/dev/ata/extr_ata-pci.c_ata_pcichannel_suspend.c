
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ata_pci_controller {int (* ch_suspend ) (int ) ;} ;
struct ata_channel {int attached; } ;
typedef int device_t ;


 int ata_suspend (int ) ;
 int device_get_parent (int ) ;
 void* device_get_softc (int ) ;
 int stub1 (int ) ;

__attribute__((used)) static int
ata_pcichannel_suspend(device_t dev)
{
    struct ata_pci_controller *ctlr = device_get_softc(device_get_parent(dev));
    struct ata_channel *ch = device_get_softc(dev);
    int error;

    if (!ch->attached)
 return (0);

    if ((error = ata_suspend(dev)))
 return (error);

    if (ctlr->ch_suspend != ((void*)0) && (error = ctlr->ch_suspend(dev)))
 return (error);

    return (0);
}
