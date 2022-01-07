
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct ata_pci_controller {TYPE_1__* chip; } ;
struct ata_channel {int unit; } ;
typedef int device_t ;
struct TYPE_2__ {int cfg2; } ;


 int ATA_MODE_MASK ;
 int ATA_PIO4 ;
 int ATA_UDMA0 ;
 int ATA_WDMA0 ;
 int VIABAR ;
 size_t ata_mode2idx (int) ;
 int ata_sata_setmode (int ,int,int) ;
 int device_get_parent (int ) ;
 void* device_get_softc (int ) ;
 int pci_write_config (int ,int,int const,int) ;

__attribute__((used)) static int
ata_via_new_setmode(device_t dev, int target, int mode)
{
 device_t parent = device_get_parent(dev);
 struct ata_pci_controller *ctlr = device_get_softc(parent);
 struct ata_channel *ch = device_get_softc(dev);

 if ((ctlr->chip->cfg2 & VIABAR) && (ch->unit > 1)) {
     int piomode;
         static const uint8_t pio_timings[] =
  { 0xa8, 0x65, 0x65, 0x32, 0x20 };
     static const uint8_t dma_timings[] =
  { 0xee, 0xe8, 0xe6, 0xe4, 0xe2, 0xe1, 0xe0 };


     if (mode >= ATA_WDMA0 && mode < ATA_UDMA0)
  mode = ATA_PIO4;
     if (mode >= ATA_UDMA0) {
  pci_write_config(parent, 0xb3,
     dma_timings[mode & ATA_MODE_MASK], 1);
  piomode = ATA_PIO4;
     } else
  piomode = mode;
     pci_write_config(parent, 0xab, pio_timings[ata_mode2idx(piomode)], 1);
 } else
  mode = ata_sata_setmode(dev, target, mode);
 return (mode);
}
