
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int member_0; int member_1; } ;
typedef TYPE_2__ uint32_t ;
struct ata_pci_controller {TYPE_1__* chip; int r_res2; } ;
struct ata_channel {int unit; } ;
typedef int device_t ;
struct TYPE_4__ {int cfg1; int cfg2; int max_dma; } ;


 int ATA_BMDEVSPEC_0 ;
 int ATA_BMDEVSPEC_1 ;
 int ATA_IDX_INB (struct ata_channel*,int ) ;
 int ATA_IDX_OUTB (struct ata_channel*,int ,int) ;
 int ATA_INL (int ,int) ;
 int ATA_UDMA2 ;



 int PR_SX4X ;

 int ata_dma_check_80pin ;
 size_t ata_mode2idx (int) ;
 int ata_print_cable (int ,char*) ;
 int device_get_parent (int ) ;
 void* device_get_softc (int ) ;
 int min (int,int ) ;
 int pci_read_config (int ,int,int) ;
 int pci_write_config (int ,int,TYPE_2__ const,int) ;

__attribute__((used)) static int
ata_promise_setmode(device_t dev, int target, int mode)
{
    device_t parent = device_get_parent(dev);
    struct ata_pci_controller *ctlr = device_get_softc(parent);
    struct ata_channel *ch = device_get_softc(dev);
    int devno = (ch->unit << 1) + target;
    static const uint32_t timings[][2] = {

 { 0x004ff329, 0x004fff2f },
 { 0x004fec25, 0x004ff82a },
 { 0x004fe823, 0x004ff026 },
 { 0x004fe622, 0x004fec24 },
 { 0x004fe421, 0x004fe822 },
 { 0x004567f3, 0x004acef6 },
 { 0x004467f3, 0x0048cef6 },
 { 0x004367f3, 0x0046cef6 },
 { 0x004367f3, 0x0046cef6 },
 { 0x004247f3, 0x00448ef6 },
 { 0x004127f3, 0x00436ef6 },
 { 0, 0x00424ef6 },
 { 0, 0x004127f3 },
 { 0, 0x004127f3 }
    };

    mode = min(mode, ctlr->chip->max_dma);

    switch (ctlr->chip->cfg1) {
    case 129:
    case 130:
 if (ata_dma_check_80pin && mode > ATA_UDMA2 &&
     (pci_read_config(parent, 0x50, 2) &
     (ch->unit ? 1 << 11 : 1 << 10))) {
     ata_print_cable(dev, "controller");
     mode = ATA_UDMA2;
 }
 break;

    case 128:
 ATA_IDX_OUTB(ch, ATA_BMDEVSPEC_0, 0x0b);
 if (ata_dma_check_80pin && mode > ATA_UDMA2 &&
     ATA_IDX_INB(ch, ATA_BMDEVSPEC_1) & 0x04) {
     ata_print_cable(dev, "controller");
     mode = ATA_UDMA2;
 }
 break;

    case 131:
 if (ata_dma_check_80pin && mode > ATA_UDMA2 &&
     (ATA_INL(ctlr->r_res2,
       (ctlr->chip->cfg2 & PR_SX4X ? 0x000c0260 : 0x0260) +
       (ch->unit << 7)) & 0x01000000)) {
     ata_print_cable(dev, "controller");
     mode = ATA_UDMA2;
 }
 break;
    }

 if (ctlr->chip->cfg1 < 128)
     pci_write_config(parent, 0x60 + (devno << 2),
        timings[ata_mode2idx(mode)][ctlr->chip->cfg1], 4);
 return (mode);
}
