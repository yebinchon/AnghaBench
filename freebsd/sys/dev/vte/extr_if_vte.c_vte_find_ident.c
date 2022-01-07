
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint16_t ;
struct vte_ident {scalar_t__ vendorid; scalar_t__ deviceid; int * name; } ;
typedef int device_t ;


 scalar_t__ pci_get_device (int ) ;
 scalar_t__ pci_get_vendor (int ) ;
 struct vte_ident* vte_ident_table ;

__attribute__((used)) static const struct vte_ident *
vte_find_ident(device_t dev)
{
 const struct vte_ident *ident;
 uint16_t vendor, devid;

 vendor = pci_get_vendor(dev);
 devid = pci_get_device(dev);
 for (ident = vte_ident_table; ident->name != ((void*)0); ident++) {
  if (vendor == ident->vendorid && devid == ident->deviceid)
   return (ident);
 }

 return (((void*)0));
}
