
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ata_pci_controller {int chipinit; } ;
typedef int device_t ;


 scalar_t__ ATA_CENATEK_ROCKET ;
 int BUS_PROBE_LOW_PRIORITY ;
 int ENXIO ;
 int ata_generic_chipinit ;
 struct ata_pci_controller* device_get_softc (int ) ;
 int device_set_desc (int ,char*) ;
 scalar_t__ pci_get_devid (int ) ;

__attribute__((used)) static int
ata_cenatek_probe(device_t dev)
{
    struct ata_pci_controller *ctlr = device_get_softc(dev);

    if (pci_get_devid(dev) != ATA_CENATEK_ROCKET)
 return ENXIO;

    ctlr->chipinit = ata_generic_chipinit;
    device_set_desc(dev, "Cenatek Rocket Drive controller");
    return (BUS_PROBE_LOW_PRIORITY);
}
