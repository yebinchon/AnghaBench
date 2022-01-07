
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int member_0; int member_1; int member_2; int member_3; } ;
typedef TYPE_2__ uint32_t ;
struct ata_pci_controller {TYPE_1__* chip; } ;
struct ata_channel {int unit; } ;
typedef int device_t ;
struct TYPE_4__ {size_t cfg1; int max_dma; } ;


 int ATA_UDMA5 ;
 int ata_highpoint_check_80pin (int ,int) ;
 size_t ata_mode2idx (int) ;
 int device_get_parent (int ) ;
 void* device_get_softc (int ) ;
 int min (int,int ) ;
 int pci_write_config (int ,int,TYPE_2__ const,int) ;

__attribute__((used)) static int
ata_highpoint_setmode(device_t dev, int target, int mode)
{
 device_t parent = device_get_parent(dev);
 struct ata_pci_controller *ctlr = device_get_softc(parent);
 struct ata_channel *ch = device_get_softc(dev);
 int devno = (ch->unit << 1) + target;
 static const uint32_t timings33[][4] = {

 { 0x40d0a7aa, 0x06914e57, 0x0d029d5e, 0x0ac1f48a },
 { 0x40d0a7a3, 0x06914e43, 0x0d029d26, 0x0ac1f465 },
 { 0x40d0a753, 0x06514e33, 0x0c829ca6, 0x0a81f454 },
 { 0x40c8a742, 0x06514e22, 0x0c829c84, 0x0a81f443 },
 { 0x40c8a731, 0x06514e21, 0x0c829c62, 0x0a81f442 },
 { 0x20c8a797, 0x26514e97, 0x2c82922e, 0x228082ea },
 { 0x20c8a732, 0x26514e33, 0x2c829266, 0x22808254 },
 { 0x20c8a731, 0x26514e21, 0x2c829262, 0x22808242 },
 { 0x10c8a731, 0x16514e31, 0x1c829c62, 0x121882ea },
 { 0x10cba731, 0x164d4e31, 0x1c9a9c62, 0x12148254 },
 { 0x10caa731, 0x16494e31, 0x1c929c62, 0x120c8242 },
 { 0x10cfa731, 0x166d4e31, 0x1c8e9c62, 0x128c8242 },
 { 0x10c9a731, 0x16454e31, 0x1c8a9c62, 0x12ac8242 },
 { 0, 0x16454e31, 0x1c8a9c62, 0x12848242 },
 { 0, 0, 0x1c869c62, 0x12808242 }
 };

 mode = min(mode, ctlr->chip->max_dma);
 mode = ata_highpoint_check_80pin(dev, mode);





 mode = min(mode, ATA_UDMA5);
 pci_write_config(parent, 0x40 + (devno << 2),
    timings33[ata_mode2idx(mode)][ctlr->chip->cfg1], 4);
 return (mode);
}
