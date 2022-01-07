
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int BUS_PROBE_DEFAULT ;
 int ENXIO ;
 int device_set_desc (int ,char*) ;
 int pci_get_devid (int ) ;
 int pci_get_subvendor (int ) ;

__attribute__((used)) static int
iop_pci_probe(device_t dev)
{

    if (pci_get_devid(dev) == 0x19628086 && pci_get_subvendor(dev) == 0x105a) {
 device_set_desc(dev, "Promise SuperTrak SX6000 ATA RAID controller");
 return BUS_PROBE_DEFAULT;
    }


    if (pci_get_devid(dev) == 0x19608086 && pci_get_subvendor(dev) == 0x105a) {
 device_set_desc(dev, "Promise SuperTrak 100 ATA RAID controller");
 return BUS_PROBE_DEFAULT;
    }

    return ENXIO;
}
