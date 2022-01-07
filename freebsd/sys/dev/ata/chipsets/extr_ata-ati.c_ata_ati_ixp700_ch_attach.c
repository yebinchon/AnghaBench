
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct ata_pci_controller {scalar_t__ chipset_data; } ;
struct ata_channel {int unit; int flags; } ;
typedef int device_t ;


 int ATA_SATA ;
 int ENXIO ;
 scalar_t__ ata_pci_ch_attach (int ) ;
 int device_get_parent (int ) ;
 void* device_get_softc (int ) ;

__attribute__((used)) static int
ata_ati_ixp700_ch_attach(device_t dev)
{
 struct ata_pci_controller *ctlr = device_get_softc(device_get_parent(dev));
 struct ata_channel *ch = device_get_softc(dev);
 uint8_t satacfg = (uint8_t)(uintptr_t)ctlr->chipset_data;


 if (ata_pci_ch_attach(dev))
  return ENXIO;


 if (ch->unit == ((satacfg & 0x10) >> 4))
  ch->flags |= ATA_SATA;
 return (0);
}
