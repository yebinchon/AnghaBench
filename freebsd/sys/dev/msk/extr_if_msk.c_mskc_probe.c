
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint16_t ;
struct msk_product {scalar_t__ msk_vendorid; scalar_t__ msk_deviceid; int msk_name; } ;
typedef int device_t ;


 int BUS_PROBE_DEFAULT ;
 int ENXIO ;
 int device_set_desc (int ,int ) ;
 struct msk_product* msk_products ;
 int nitems (struct msk_product*) ;
 scalar_t__ pci_get_device (int ) ;
 scalar_t__ pci_get_vendor (int ) ;

__attribute__((used)) static int
mskc_probe(device_t dev)
{
 const struct msk_product *mp;
 uint16_t vendor, devid;
 int i;

 vendor = pci_get_vendor(dev);
 devid = pci_get_device(dev);
 mp = msk_products;
 for (i = 0; i < nitems(msk_products); i++, mp++) {
  if (vendor == mp->msk_vendorid && devid == mp->msk_deviceid) {
   device_set_desc(dev, mp->msk_name);
   return (BUS_PROBE_DEFAULT);
  }
 }

 return (ENXIO);
}
