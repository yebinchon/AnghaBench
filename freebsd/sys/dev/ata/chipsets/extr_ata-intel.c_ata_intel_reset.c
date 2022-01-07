
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint16_t ;
typedef int u_char ;
struct ata_pci_controller {TYPE_1__* chip; } ;
struct TYPE_4__ {int * pm_read; } ;
struct ata_channel {int flags; int devices; TYPE_2__ hw; } ;
typedef int device_t ;
struct TYPE_3__ {int cfg1; } ;


 int ATA_ATAPI_MASTER ;
 int ATA_ATA_MASTER ;
 int ATA_ATA_SLAVE ;
 int ATA_IDX_INB (struct ata_channel*,int ) ;
 int* ATA_INTEL_SMAP (struct ata_pci_controller*,struct ata_channel*) ;
 int ATA_NO_SLAVE ;
 int ATA_SATA ;
 int ATA_STATUS ;
 int DELAY (int) ;
 int INTEL_6CH ;
 int INTEL_6CH2 ;
 void ata_generic_reset (int ) ;
 scalar_t__ ata_sata_phy_reset (int ,int,int) ;
 int ata_udelay (int) ;
 scalar_t__ bootverbose ;
 int device_get_parent (int ) ;
 void* device_get_softc (int ) ;
 int device_printf (int ,char*,int) ;
 int pci_read_config (int ,int,int) ;
 int pci_write_config (int ,int,int,int) ;

__attribute__((used)) static void
ata_intel_reset(device_t dev)
{
 device_t parent = device_get_parent(dev);
 struct ata_pci_controller *ctlr = device_get_softc(parent);
 struct ata_channel *ch = device_get_softc(dev);
 int mask, pshift, timeout, devs;
 u_char *smap;
 uint16_t pcs;


 if ((ch->flags & ATA_SATA) == 0)
  return (ata_generic_reset(dev));


 smap = ATA_INTEL_SMAP(ctlr, ch);
 mask = 1 << smap[0];
 if ((ch->flags & ATA_NO_SLAVE) == 0)
  mask |= (1 << smap[1]);
 pci_write_config(parent, 0x92,
     pci_read_config(parent, 0x92, 2) & ~mask, 2);
 DELAY(100);
 pci_write_config(parent, 0x92,
     pci_read_config(parent, 0x92, 2) | mask, 2);


 if (ctlr->chip->cfg1 & (INTEL_6CH | INTEL_6CH2))
  pshift = 8;
 else
  pshift = 4;
 for (timeout = 0; timeout < 100 ; timeout++) {
  pcs = (pci_read_config(parent, 0x92, 2) >> pshift) & mask;
  if ((pcs == mask) && (ATA_IDX_INB(ch, ATA_STATUS) != 0xff))
   break;
  ata_udelay(10000);
 }

 if (bootverbose)
  device_printf(dev, "SATA reset: ports status=0x%02x\n", pcs);

 if (ch->hw.pm_read != ((void*)0)) {
  devs = ata_sata_phy_reset(dev, 0, 2) ? ATA_ATA_MASTER : 0;
  if ((ch->flags & ATA_NO_SLAVE) == 0)
   devs |= ata_sata_phy_reset(dev, 1, 2) ?
       ATA_ATA_SLAVE : 0;
 } else {
  devs = (pcs & (1 << smap[0])) ? ATA_ATA_MASTER : 0;
  if ((ch->flags & ATA_NO_SLAVE) == 0)
   devs |= (pcs & (1 << smap[1])) ?
       ATA_ATA_SLAVE : 0;
 }
 if (devs) {
  ata_generic_reset(dev);

  ch->devices &= (devs | (devs * ATA_ATAPI_MASTER));
 } else
  ch->devices = 0;
}
