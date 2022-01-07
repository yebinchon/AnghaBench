
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint16_t ;
struct et_dev {scalar_t__ vid; scalar_t__ did; int * desc; } ;
typedef int device_t ;


 int BUS_PROBE_DEFAULT ;
 int ENXIO ;
 int device_set_desc (int ,int *) ;
 struct et_dev* et_devices ;
 scalar_t__ pci_get_device (int ) ;
 scalar_t__ pci_get_vendor (int ) ;

__attribute__((used)) static int
et_probe(device_t dev)
{
 const struct et_dev *d;
 uint16_t did, vid;

 vid = pci_get_vendor(dev);
 did = pci_get_device(dev);

 for (d = et_devices; d->desc != ((void*)0); ++d) {
  if (vid == d->vid && did == d->did) {
   device_set_desc(dev, d->desc);
   return (BUS_PROBE_DEFAULT);
  }
 }
 return (ENXIO);
}
