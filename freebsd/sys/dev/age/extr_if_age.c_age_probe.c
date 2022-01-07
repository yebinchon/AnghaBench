
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint16_t ;
struct age_dev {scalar_t__ age_vendorid; scalar_t__ age_deviceid; int age_name; } ;
typedef int device_t ;


 int BUS_PROBE_DEFAULT ;
 int ENXIO ;
 struct age_dev* age_devs ;
 int device_set_desc (int ,int ) ;
 int nitems (struct age_dev*) ;
 scalar_t__ pci_get_device (int ) ;
 scalar_t__ pci_get_vendor (int ) ;

__attribute__((used)) static int
age_probe(device_t dev)
{
 struct age_dev *sp;
 int i;
 uint16_t vendor, devid;

 vendor = pci_get_vendor(dev);
 devid = pci_get_device(dev);
 sp = age_devs;
 for (i = 0; i < nitems(age_devs); i++, sp++) {
  if (vendor == sp->age_vendorid &&
      devid == sp->age_deviceid) {
   device_set_desc(dev, sp->age_name);
   return (BUS_PROBE_DEFAULT);
  }
 }

 return (ENXIO);
}
