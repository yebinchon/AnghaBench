
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint16_t ;
struct jme_dev {scalar_t__ jme_vendorid; scalar_t__ jme_deviceid; int jme_name; } ;
typedef int device_t ;


 int BUS_PROBE_DEFAULT ;
 int ENXIO ;
 int device_set_desc (int ,int ) ;
 struct jme_dev* jme_devs ;
 int nitems (struct jme_dev*) ;
 scalar_t__ pci_get_device (int ) ;
 scalar_t__ pci_get_vendor (int ) ;

__attribute__((used)) static int
jme_probe(device_t dev)
{
 struct jme_dev *sp;
 int i;
 uint16_t vendor, devid;

 vendor = pci_get_vendor(dev);
 devid = pci_get_device(dev);
 sp = jme_devs;
 for (i = 0; i < nitems(jme_devs); i++, sp++) {
  if (vendor == sp->jme_vendorid &&
      devid == sp->jme_deviceid) {
   device_set_desc(dev, sp->jme_name);
   return (BUS_PROBE_DEFAULT);
  }
 }

 return (ENXIO);
}
