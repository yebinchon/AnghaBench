
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct ata_pci_controller {TYPE_1__* chip; } ;
struct ata_channel {int unit; int devices; int flags; } ;
typedef int device_t ;
struct TYPE_2__ {int cfg2; int chiprev; int max_dma; } ;


 int ALI_NEW ;
 int ALI_OLD ;
 int ATA_ATAPI_DMA_RO ;
 int ATA_ATAPI_MASTER ;
 int ATA_ATAPI_SLAVE ;
 int ATA_MODE_MASK ;
 int ATA_PIO4 ;
 int ATA_PIO_MAX ;
 int ATA_UDMA0 ;
 int ATA_UDMA2 ;
 scalar_t__ ata_dma_check_80pin ;
 size_t ata_mode2idx (int) ;
 int ata_print_cable (int ,char*) ;
 int device_get_parent (int ) ;
 void* device_get_softc (int ) ;
 int device_printf (int ,char*) ;
 int min (int,int ) ;
 int pci_read_config (int ,int,int) ;
 int pci_write_config (int ,int,int const,int) ;

__attribute__((used)) static int
ata_ali_setmode(device_t dev, int target, int mode)
{
 device_t parent = device_get_parent(dev);
 struct ata_pci_controller *ctlr = device_get_softc(parent);
 struct ata_channel *ch = device_get_softc(dev);
 int devno = (ch->unit << 1) + target;
 int piomode;
 static const uint32_t piotimings[] =
  { 0x006d0003, 0x00580002, 0x00440001, 0x00330001,
    0x00310001, 0x006d0003, 0x00330001, 0x00310001 };
 static const uint8_t udma[] = {0x0c, 0x0b, 0x0a, 0x09, 0x08, 0x0f,
     0x0d};
 uint32_t word54;

        mode = min(mode, ctlr->chip->max_dma);

 if (ctlr->chip->cfg2 & ALI_NEW && ctlr->chip->chiprev < 0xc7) {
  if (ata_dma_check_80pin && mode > ATA_UDMA2 &&
      pci_read_config(parent, 0x4a, 1) & (1 << ch->unit)) {
   ata_print_cable(dev, "controller");
   mode = ATA_UDMA2;
  }
 }
 if (ctlr->chip->cfg2 & ALI_OLD) {

  ch->flags |= ATA_ATAPI_DMA_RO;
  if (ch->devices & ATA_ATAPI_MASTER &&
      ch->devices & ATA_ATAPI_SLAVE) {

          device_printf(dev, "two atapi devices on this channel,"
       " no DMA\n");
          mode = min(mode, ATA_PIO_MAX);
  }
 }

 word54 = pci_read_config(parent, 0x54, 4);
 if (mode >= ATA_UDMA0) {
     word54 &= ~(0x000f000f << (devno << 2));
     word54 |= (((udma[mode&ATA_MODE_MASK]<<16)|0x05)<<(devno<<2));
     piomode = ATA_PIO4;
 }
 else {
     word54 &= ~(0x0008000f << (devno << 2));
     piomode = mode;
 }
 pci_write_config(parent, 0x54, word54, 4);

 pci_write_config(parent, 0x58 + (ch->unit << 2),
     piotimings[ata_mode2idx(piomode)], 4);
 return (mode);
}
