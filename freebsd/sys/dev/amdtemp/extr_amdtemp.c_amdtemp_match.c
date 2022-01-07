
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint16_t ;
struct amdtemp_product {scalar_t__ amdtemp_vendorid; scalar_t__ amdtemp_deviceid; } ;
typedef int device_t ;


 struct amdtemp_product* amdtemp_products ;
 int nitems (struct amdtemp_product*) ;
 scalar_t__ pci_get_device (int ) ;
 scalar_t__ pci_get_vendor (int ) ;

__attribute__((used)) static bool
amdtemp_match(device_t dev, const struct amdtemp_product **product_out)
{
 int i;
 uint16_t vendor, devid;

 vendor = pci_get_vendor(dev);
 devid = pci_get_device(dev);

 for (i = 0; i < nitems(amdtemp_products); i++) {
  if (vendor == amdtemp_products[i].amdtemp_vendorid &&
      devid == amdtemp_products[i].amdtemp_deviceid) {
   if (product_out != ((void*)0))
    *product_out = &amdtemp_products[i];
   return (1);
  }
 }
 return (0);
}
