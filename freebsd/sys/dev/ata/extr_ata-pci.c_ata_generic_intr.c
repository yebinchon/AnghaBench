
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ata_pci_controller {TYPE_1__* interrupt; } ;
struct ata_channel {int dummy; } ;
struct TYPE_2__ {int (* function ) (struct ata_channel*) ;struct ata_channel* argument; } ;


 int ATA_PCI_MAX_CH ;
 int stub1 (struct ata_channel*) ;

void
ata_generic_intr(void *data)
{
    struct ata_pci_controller *ctlr = data;
    struct ata_channel *ch;
    int unit;

    for (unit = 0; unit < ATA_PCI_MAX_CH; unit++) {
 if ((ch = ctlr->interrupt[unit].argument))
     ctlr->interrupt[unit].function(ch);
    }
}
