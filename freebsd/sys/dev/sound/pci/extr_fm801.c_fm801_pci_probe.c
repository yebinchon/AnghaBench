
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int BUS_PROBE_DEFAULT ;
 int ENXIO ;
 int PCI_DEVICE_FORTEMEDIA1 ;
 int device_set_desc (int ,char*) ;
 int pci_get_devid (int ) ;

__attribute__((used)) static int
fm801_pci_probe( device_t dev )
{
 int id;

 if ((id = pci_get_devid(dev)) == PCI_DEVICE_FORTEMEDIA1 ) {
  device_set_desc(dev, "Forte Media FM801 Audio Controller");
  return BUS_PROBE_DEFAULT;
 }






 return ENXIO;
}
