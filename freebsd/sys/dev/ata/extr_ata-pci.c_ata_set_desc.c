
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ata_pci_controller {TYPE_1__* chip; } ;
typedef int device_t ;
struct TYPE_2__ {char* text; int max_dma; } ;


 char* ata_mode2str (int ) ;
 char* ata_pcivendor2str (int ) ;
 struct ata_pci_controller* device_get_softc (int ) ;
 int device_set_desc_copy (int ,char*) ;
 int sprintf (char*,char*,char*,char*,char*) ;

void
ata_set_desc(device_t dev)
{
    struct ata_pci_controller *ctlr = device_get_softc(dev);
    char buffer[128];

    sprintf(buffer, "%s %s %s controller",
            ata_pcivendor2str(dev), ctlr->chip->text,
            ata_mode2str(ctlr->chip->max_dma));
    device_set_desc_copy(dev, buffer);
}
