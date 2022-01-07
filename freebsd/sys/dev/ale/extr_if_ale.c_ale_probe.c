
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint16_t ;
struct ale_dev {scalar_t__ ale_vendorid; scalar_t__ ale_deviceid; int ale_name; } ;
typedef int device_t ;


 int BUS_PROBE_DEFAULT ;
 int ENXIO ;
 struct ale_dev* ale_devs ;
 int device_set_desc (int ,int ) ;
 int nitems (struct ale_dev*) ;
 scalar_t__ pci_get_device (int ) ;
 scalar_t__ pci_get_vendor (int ) ;

__attribute__((used)) static int
ale_probe(device_t dev)
{
 const struct ale_dev *sp;
 int i;
 uint16_t vendor, devid;

 vendor = pci_get_vendor(dev);
 devid = pci_get_device(dev);
 sp = ale_devs;
 for (i = 0; i < nitems(ale_devs); i++) {
  if (vendor == sp->ale_vendorid &&
      devid == sp->ale_deviceid) {
   device_set_desc(dev, sp->ale_name);
   return (BUS_PROBE_DEFAULT);
  }
  sp++;
 }

 return (ENXIO);
}
