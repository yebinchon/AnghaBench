
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int ENXIO ;
 int fixc1_nforce2 (int ) ;
 int fixwsc_natoma (int ) ;
 int pci_get_devid (int ) ;

__attribute__((used)) static int
fixup_pci_probe(device_t dev)
{
    switch (pci_get_devid(dev)) {
    case 0x12378086:
 fixwsc_natoma(dev);
 break;
    case 0x01e010de:
 fixc1_nforce2(dev);
 break;
    }
    return(ENXIO);
}
