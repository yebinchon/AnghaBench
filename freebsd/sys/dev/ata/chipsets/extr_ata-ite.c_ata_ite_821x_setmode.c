
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct ata_pci_controller {TYPE_1__* chip; int chipset_data; } ;
struct ata_channel {int unit; } ;
typedef int device_t ;
struct TYPE_2__ {int max_dma; } ;


 int ATA_MODE_MASK ;
 int ATA_PIO4 ;
 int ATA_UDMA0 ;
 int ATA_UDMA2 ;
 scalar_t__ ata_dma_check_80pin ;
 size_t ata_mode2idx (int) ;
 int ata_print_cable (int ,char*) ;
 int device_get_parent (int ) ;
 void* device_get_softc (int ) ;
 int max (int,int) ;
 int min (int,int ) ;
 int pci_read_config (int ,int,int) ;
 int pci_write_config (int ,int,int const,int) ;

__attribute__((used)) static int
ata_ite_821x_setmode(device_t dev, int target, int mode)
{
 device_t parent = device_get_parent(dev);
 struct ata_pci_controller *ctlr = device_get_softc(parent);
 struct ata_channel *ch = device_get_softc(dev);
 int devno = (ch->unit << 1) + target;
 int piomode;
 uint8_t *timings = (uint8_t*)(&ctlr->chipset_data);
 static const uint8_t udmatiming[] =
  { 0x44, 0x42, 0x31, 0x21, 0x11, 0xa2, 0x91 };
 static const uint8_t chtiming[] =
  { 0xaa, 0xa3, 0xa1, 0x33, 0x31, 0x88, 0x32, 0x31 };

 mode = min(mode, ctlr->chip->max_dma);

 if (ata_dma_check_80pin && mode > ATA_UDMA2 &&
     (pci_read_config(parent, 0x40, 2) &
        (ch->unit ? (1<<3) : (1<<2)))) {
  ata_print_cable(dev, "controller");
  mode = ATA_UDMA2;
 }
 if (mode >= ATA_UDMA0) {

  pci_write_config(parent, 0x50,
        pci_read_config(parent, 0x50, 1) &
        ~(1 << (devno + 3)), 1);

  pci_write_config(parent,
        0x56 + (ch->unit << 2) + target,
        udmatiming[mode & ATA_MODE_MASK], 1);
  piomode = ATA_PIO4;
 } else {

  pci_write_config(parent, 0x50,
        pci_read_config(parent, 0x50, 1) |
        (1 << (devno + 3)), 1);
  piomode = mode;
 }
 timings[devno] = chtiming[ata_mode2idx(piomode)];

 pci_write_config(parent, 0x54 + (ch->unit << 2),
     max(timings[ch->unit << 1], timings[(ch->unit << 1) + 1]), 1);
 return (mode);
}
