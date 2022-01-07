
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int ENXIO ;
 int device_quiet (int ) ;
 int device_set_desc (int ,char*) ;
 int pci_get_devid (int ) ;

__attribute__((used)) static int
ignore_pci_probe(device_t dev)
{
    switch (pci_get_devid(dev)) {
    case 0x10001042ul:
 device_set_desc(dev, "ignored");
 device_quiet(dev);
 return(-10000);
    }
    return(ENXIO);
}
