
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_int8_t ;
typedef int u_int32_t ;
struct ata_pci_controller {TYPE_1__* chip; } ;
typedef int device_t ;
struct TYPE_2__ {int max_dma; } ;


 int ATA_MODE_MASK ;
 int ATA_PIO0 ;
 int ATA_PIO3 ;
 int ATA_PIO4 ;
 int ATA_UDMA0 ;
 int ATA_WDMA0 ;
 int ATA_WDMA1 ;
 int device_get_parent (int ) ;
 struct ata_pci_controller* device_get_softc (int ) ;
 int min (int,int ) ;
 int pci_read_config (int ,int,int) ;
 int pci_write_config (int ,int,int,int) ;

__attribute__((used)) static int
ata_intel_sch_setmode(device_t dev, int target, int mode)
{
 device_t parent = device_get_parent(dev);
 struct ata_pci_controller *ctlr = device_get_softc(parent);
 u_int8_t dtim = 0x80 + (target << 2);
 u_int32_t tim = pci_read_config(parent, dtim, 4);
 int piomode;

 mode = min(mode, ctlr->chip->max_dma);
 if (mode >= ATA_UDMA0) {
  tim |= (0x1 << 31);
  tim &= ~(0x7 << 16);
  tim |= ((mode & ATA_MODE_MASK) << 16);
  piomode = ATA_PIO4;
 } else if (mode >= ATA_WDMA0) {
  tim &= ~(0x1 << 31);
  tim &= ~(0x3 << 8);
  tim |= ((mode & ATA_MODE_MASK) << 8);
  piomode = (mode == ATA_WDMA0) ? ATA_PIO0 :
      (mode == ATA_WDMA1) ? ATA_PIO3 : ATA_PIO4;
 } else
  piomode = mode;
 tim &= ~(0x7);
 tim |= (piomode & 0x7);
 pci_write_config(parent, dtim, tim, 4);
 return (mode);
}
