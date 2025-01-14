
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
typedef int uint16_t ;
typedef int u_int32_t ;
typedef int u_int16_t ;
struct ata_pci_controller {TYPE_1__* chip; } ;
struct ata_channel {int unit; } ;
typedef int device_t ;
struct TYPE_2__ {int cfg1; int max_dma; } ;


 int ATA_UDMA2 ;






 scalar_t__ ata_dma_check_80pin ;
 size_t ata_mode2idx (int) ;
 int ata_print_cable (int ,char*) ;
 int device_get_parent (int ) ;
 void* device_get_softc (int ) ;
 int min (int,int ) ;
 int pci_read_config (int ,int,int) ;
 int pci_write_config (int ,int,int const,int) ;

__attribute__((used)) static int
ata_sis_setmode(device_t dev, int target, int mode)
{
 device_t parent = device_get_parent(dev);
 struct ata_pci_controller *ctlr = device_get_softc(parent);
 struct ata_channel *ch = device_get_softc(dev);
 int devno = (ch->unit << 1) + target;

 mode = min(mode, ctlr->chip->max_dma);

 if (ctlr->chip->cfg1 == 131) {
  if (ata_dma_check_80pin && mode > ATA_UDMA2 &&
          pci_read_config(parent, ch->unit ? 0x52 : 0x50,2) & 0x8000) {
          ata_print_cable(dev, "controller");
          mode = ATA_UDMA2;
  }
 } else {
  if (ata_dma_check_80pin && mode > ATA_UDMA2 &&
      pci_read_config(parent, 0x48, 1)&(ch->unit ? 0x20 : 0x10)) {
      ata_print_cable(dev, "controller");
      mode = ATA_UDMA2;
  }
        }

 switch (ctlr->chip->cfg1) {
 case 131: {
     static const uint32_t timings[] =
  { 0x28269008, 0x0c266008, 0x04263008, 0x0c0a3008, 0x05093008,
    0x22196008, 0x0c0a3008, 0x05093008, 0x050939fc, 0x050936ac,
    0x0509347c, 0x0509325c, 0x0509323c, 0x0509322c, 0x0509321c};
     u_int32_t reg;

     reg = (pci_read_config(parent, 0x57, 1)&0x40?0x70:0x40)+(devno<<2);
     pci_write_config(parent, reg, timings[ata_mode2idx(mode)], 4);
     break;
     }
 case 130: {
     static const uint16_t timings[] =
      { 0x00cb, 0x0067, 0x0044, 0x0033, 0x0031, 0x0044, 0x0033, 0x0031,
        0x8f31, 0x8a31, 0x8731, 0x8531, 0x8331, 0x8231, 0x8131 };

     u_int16_t reg = 0x40 + (devno << 1);

     pci_write_config(parent, reg, timings[ata_mode2idx(mode)], 2);
     break;
     }
 case 133: {
     static const uint16_t timings[] =
  { 0x00cb, 0x0067, 0x0044, 0x0033, 0x0031, 0x0044, 0x0033,
    0x0031, 0x8b31, 0x8731, 0x8531, 0x8431, 0x8231, 0x8131 };
     u_int16_t reg = 0x40 + (devno << 1);

     pci_write_config(parent, reg, timings[ata_mode2idx(mode)], 2);
     break;
     }
 case 132:
 case 128:
 case 129: {
     static const uint16_t timings[] =
  { 0x0c0b, 0x0607, 0x0404, 0x0303, 0x0301, 0x0404, 0x0303,
    0x0301, 0xf301, 0xd301, 0xb301, 0xa301, 0x9301, 0x8301 };
     u_int16_t reg = 0x40 + (devno << 1);

     pci_write_config(parent, reg, timings[ata_mode2idx(mode)], 2);
     break;
     }
 }
 return (mode);
}
