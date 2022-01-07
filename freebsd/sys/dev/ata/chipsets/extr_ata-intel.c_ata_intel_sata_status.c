
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ata_channel {int flags; } ;
typedef int device_t ;


 int ATA_NO_SLAVE ;
 int ata_pci_status (int ) ;
 int ata_sata_phy_check_events (int ,int) ;
 struct ata_channel* device_get_softc (int ) ;

__attribute__((used)) static int
ata_intel_sata_status(device_t dev)
{
 struct ata_channel *ch = device_get_softc(dev);

 ata_sata_phy_check_events(dev, 0);
 if ((ch->flags & ATA_NO_SLAVE) == 0)
  ata_sata_phy_check_events(dev, 1);

 return ata_pci_status(dev);
}
