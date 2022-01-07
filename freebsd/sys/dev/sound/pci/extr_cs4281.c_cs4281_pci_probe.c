
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int BUS_PROBE_DEFAULT ;

 int ENXIO ;
 int device_set_desc (int ,char*) ;
 int pci_get_devid (int ) ;

__attribute__((used)) static int
cs4281_pci_probe(device_t dev)
{
    char *s = ((void*)0);

    switch (pci_get_devid(dev)) {
    case 128:
 s = "Crystal Semiconductor CS4281";
 break;
    }

    if (s)
 device_set_desc(dev, s);
    return s ? BUS_PROBE_DEFAULT : ENXIO;
}
