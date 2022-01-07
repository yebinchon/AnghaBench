
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ata_pci_controller {int (* ch_attach ) (int ) ;} ;
struct ata_channel {int attached; intptr_t unit; int pm_level; int dev; } ;
typedef int device_t ;


 int ata_attach (int ) ;
 scalar_t__ device_get_ivars (int ) ;
 int device_get_name (int ) ;
 int device_get_parent (int ) ;
 void* device_get_softc (int ) ;
 int device_get_unit (int ) ;
 int resource_int_value (int ,int ,char*,int *) ;
 int stub1 (int ) ;

__attribute__((used)) static int
ata_pcichannel_attach(device_t dev)
{
    struct ata_pci_controller *ctlr = device_get_softc(device_get_parent(dev));
    struct ata_channel *ch = device_get_softc(dev);
    int error;

    if (ch->attached)
 return (0);
    ch->attached = 1;

    ch->dev = dev;
    ch->unit = (intptr_t)device_get_ivars(dev);

    resource_int_value(device_get_name(dev),
 device_get_unit(dev), "pm_level", &ch->pm_level);

    if ((error = ctlr->ch_attach(dev)))
 return error;

    return ata_attach(dev);
}
