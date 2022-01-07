
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ata_pci_controller {int chipinit; } ;
typedef int device_t ;


 int BUS_PROBE_GENERIC ;
 int ENXIO ;
 scalar_t__ PCIC_STORAGE ;
 scalar_t__ PCIS_STORAGE_IDE ;
 int ata_generic_chipinit ;
 char* ata_pcivendor2str (int ) ;
 struct ata_pci_controller* device_get_softc (int ) ;
 int device_set_desc_copy (int ,char*) ;
 scalar_t__ pci_get_class (int ) ;
 scalar_t__ pci_get_subclass (int ) ;
 int sprintf (char*,char*,char*) ;

int
ata_pci_probe(device_t dev)
{
    struct ata_pci_controller *ctlr = device_get_softc(dev);
    char buffer[64];


    if (pci_get_class(dev) != PCIC_STORAGE)
 return (ENXIO);


    if (pci_get_subclass(dev) != PCIS_STORAGE_IDE)
 return (ENXIO);

    sprintf(buffer, "%s ATA controller", ata_pcivendor2str(dev));
    device_set_desc_copy(dev, buffer);
    ctlr->chipinit = ata_generic_chipinit;


    return (BUS_PROBE_GENERIC);
}
