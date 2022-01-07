
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint16_t ;
struct malo_product {scalar_t__ mp_vendorid; scalar_t__ mp_deviceid; int mp_name; } ;
typedef int device_t ;


 int BUS_PROBE_DEFAULT ;
 int ENXIO ;
 int device_set_desc (int ,int ) ;
 struct malo_product* malo_products ;
 int nitems (struct malo_product*) ;
 scalar_t__ pci_get_device (int ) ;
 scalar_t__ pci_get_vendor (int ) ;

__attribute__((used)) static int
malo_pci_probe(device_t dev)
{
 struct malo_product *mp;
 uint16_t vendor, devid;
 int i;

 vendor = pci_get_vendor(dev);
 devid = pci_get_device(dev);
 mp = malo_products;

 for (i = 0; i < nitems(malo_products); i++, mp++) {
  if (vendor == mp->mp_vendorid && devid == mp->mp_deviceid) {
   device_set_desc(dev, mp->mp_name);
   return (BUS_PROBE_DEFAULT);
  }
 }

 return (ENXIO);
}
