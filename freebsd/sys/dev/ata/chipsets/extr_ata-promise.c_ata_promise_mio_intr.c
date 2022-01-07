
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u_int32_t ;
struct ata_pci_controller {int channels; void* chipset_data; TYPE_1__* interrupt; int r_res2; } ;
struct ata_channel {int dummy; } ;
struct TYPE_2__ {int (* function ) (struct ata_channel*) ;struct ata_channel* argument; } ;


 scalar_t__ ATA_INL (int ,int) ;
 int ATA_OUTL (int ,int,scalar_t__) ;
 int stub1 (struct ata_channel*) ;

__attribute__((used)) static void
ata_promise_mio_intr(void *data)
{
    struct ata_pci_controller *ctlr = data;
    struct ata_channel *ch;
    u_int32_t vector;
    int unit;






    vector = ATA_INL(ctlr->r_res2, 0x040);
    ATA_OUTL(ctlr->r_res2, 0x040, vector);
    ctlr->chipset_data = (void *)(uintptr_t)vector;

    for (unit = 0; unit < ctlr->channels; unit++) {
 if ((ch = ctlr->interrupt[unit].argument))
     ctlr->interrupt[unit].function(ch);
    }

    ctlr->chipset_data = (void *)(uintptr_t)0xffffffff;
}
