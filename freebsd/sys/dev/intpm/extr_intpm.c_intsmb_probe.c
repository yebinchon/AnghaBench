
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct intsmb_device {scalar_t__ devid; int description; } ;
typedef int device_t ;


 int BUS_PROBE_DEFAULT ;
 int ENXIO ;
 int device_set_desc (int ,int ) ;
 struct intsmb_device* intsmb_products ;
 size_t nitems (struct intsmb_device*) ;
 scalar_t__ pci_get_devid (int ) ;

__attribute__((used)) static int
intsmb_probe(device_t dev)
{
 const struct intsmb_device *isd;
 uint32_t devid;
 size_t i;

 devid = pci_get_devid(dev);
 for (i = 0; i < nitems(intsmb_products); i++) {
  isd = &intsmb_products[i];
  if (isd->devid == devid) {
   device_set_desc(dev, isd->description);
   return (BUS_PROBE_DEFAULT);
  }
 }
 return (ENXIO);
}
