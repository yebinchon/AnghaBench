
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct ata_pci_controller {TYPE_1__* chip; } ;
struct ata_channel {int unit; } ;
typedef int device_t ;
struct TYPE_2__ {size_t cfg1; int max_dma; } ;


 int ATA_MODE_MASK ;
 int ATA_PIO4 ;
 int ATA_UDMA0 ;
 size_t ata_mode2idx (int) ;
 int device_get_parent (int ) ;
 void* device_get_softc (int ) ;
 int min (int,int ) ;
 int pci_write_config (int ,int,int const,int) ;

__attribute__((used)) static int
ata_via_old_setmode(device_t dev, int target, int mode)
{
 device_t parent = device_get_parent(dev);
 struct ata_pci_controller *ctlr = device_get_softc(parent);
 struct ata_channel *ch = device_get_softc(dev);
 int devno = (ch->unit << 1) + target;
 int reg = 0x53 - devno;
 int piomode;
 static const uint8_t timings[] =
     { 0xa8, 0x65, 0x42, 0x22, 0x20, 0xa8, 0x22, 0x20 };
 static const uint8_t modes[][7] = {
     { 0xc2, 0xc1, 0xc0, 0x00, 0x00, 0x00, 0x00 },
     { 0xee, 0xec, 0xea, 0xe9, 0xe8, 0x00, 0x00 },
     { 0xf7, 0xf6, 0xf4, 0xf2, 0xf1, 0xf0, 0x00 },
     { 0xf7, 0xf7, 0xf6, 0xf4, 0xf2, 0xf1, 0xf0 } };

 mode = min(mode, ctlr->chip->max_dma);

 if (mode >= ATA_UDMA0) {
     pci_write_config(parent, reg,
        modes[ctlr->chip->cfg1][mode & ATA_MODE_MASK], 1);
     piomode = ATA_PIO4;
 } else {
     pci_write_config(parent, reg, 0x8b, 1);
     piomode = mode;
 }

 pci_write_config(parent, reg - 0x08,timings[ata_mode2idx(piomode)], 1);
 return (mode);
}
