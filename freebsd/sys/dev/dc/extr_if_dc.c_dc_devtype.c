
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
typedef scalar_t__ uint32_t ;
struct dc_type {scalar_t__ dc_devid; scalar_t__ dc_minrev; int * dc_name; } ;
typedef int device_t ;


 struct dc_type* dc_devs ;
 scalar_t__ pci_get_devid (int ) ;
 scalar_t__ pci_get_revid (int ) ;

__attribute__((used)) static const struct dc_type *
dc_devtype(device_t dev)
{
 const struct dc_type *t;
 uint32_t devid;
 uint8_t rev;

 t = dc_devs;
 devid = pci_get_devid(dev);
 rev = pci_get_revid(dev);

 while (t->dc_name != ((void*)0)) {
  if (devid == t->dc_devid && rev >= t->dc_minrev)
   return (t);
  t++;
 }

 return (((void*)0));
}
