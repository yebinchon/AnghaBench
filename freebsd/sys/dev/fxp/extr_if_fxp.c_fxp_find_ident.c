
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef scalar_t__ uint16_t ;
struct fxp_ident {scalar_t__ vendor; scalar_t__ device; int revid; int * name; } ;
typedef int device_t ;


 struct fxp_ident* fxp_ident_table ;
 scalar_t__ pci_get_device (int ) ;
 int pci_get_revid (int ) ;
 scalar_t__ pci_get_vendor (int ) ;

__attribute__((used)) static const struct fxp_ident *
fxp_find_ident(device_t dev)
{
 uint16_t vendor;
 uint16_t device;
 uint8_t revid;
 const struct fxp_ident *ident;

 vendor = pci_get_vendor(dev);
 device = pci_get_device(dev);
 revid = pci_get_revid(dev);
 for (ident = fxp_ident_table; ident->name != ((void*)0); ident++) {
  if (ident->vendor == vendor && ident->device == device &&
      (ident->revid == revid || ident->revid == -1)) {
   return (ident);
  }
 }
 return (((void*)0));
}
