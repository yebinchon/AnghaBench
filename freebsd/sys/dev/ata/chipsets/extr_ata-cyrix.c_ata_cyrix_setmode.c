
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct ata_pci_controller {scalar_t__ r_res1; } ;
struct ata_channel {int unit; TYPE_1__* r_io; } ;
typedef int device_t ;
struct TYPE_2__ {int res; } ;


 size_t ATA_BMCMD_PORT ;
 int ATA_MODE_MASK ;
 int ATA_OUTL (int ,int,int const) ;
 int ATA_PIO0 ;
 int ATA_PIO3 ;
 int ATA_PIO4 ;
 int ATA_UDMA0 ;
 int ATA_UDMA2 ;
 int ATA_WDMA0 ;
 int ATA_WDMA1 ;
 size_t ata_mode2idx (int) ;
 int device_get_parent (int ) ;
 void* device_get_softc (int ) ;
 int min (int,int ) ;

__attribute__((used)) static int
ata_cyrix_setmode(device_t dev, int target, int mode)
{
 struct ata_pci_controller *ctlr = device_get_softc(device_get_parent(dev));
 struct ata_channel *ch = device_get_softc(dev);
 int devno = (ch->unit << 1) + target;
 int piomode;
 static const uint32_t piotiming[] =
     { 0x00009172, 0x00012171, 0x00020080, 0x00032010, 0x00040010 };
 static const uint32_t dmatiming[] =
     { 0x00077771, 0x00012121, 0x00002020 };
 static const uint32_t udmatiming[] =
     { 0x00921250, 0x00911140, 0x00911030 };

 mode = min(mode, ATA_UDMA2);

 if (ctlr->r_res1) {
  if (mode >= ATA_UDMA0) {

   ATA_OUTL(ch->r_io[ATA_BMCMD_PORT].res,
       0x24 + (devno << 3), udmatiming[mode & ATA_MODE_MASK]);
   piomode = ATA_PIO4;
  } else if (mode >= ATA_WDMA0) {

   ATA_OUTL(ch->r_io[ATA_BMCMD_PORT].res,
       0x24 + (devno << 3), dmatiming[mode & ATA_MODE_MASK]);
          piomode = (mode == ATA_WDMA0) ? ATA_PIO0 :
       (mode == ATA_WDMA1) ? ATA_PIO3 : ATA_PIO4;
  } else
   piomode = mode;

  ATA_OUTL(ch->r_io[ATA_BMCMD_PORT].res,
      0x20 + (devno << 3), piotiming[ata_mode2idx(piomode)]);
 }
 return (mode);
}
