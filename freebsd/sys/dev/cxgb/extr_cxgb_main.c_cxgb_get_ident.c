
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cxgb_ident {scalar_t__ vendor; scalar_t__ device; int * desc; } ;
typedef int device_t ;


 struct cxgb_ident* cxgb_identifiers ;
 scalar_t__ pci_get_device (int ) ;
 scalar_t__ pci_get_vendor (int ) ;

__attribute__((used)) static struct cxgb_ident *
cxgb_get_ident(device_t dev)
{
 struct cxgb_ident *id;

 for (id = cxgb_identifiers; id->desc != ((void*)0); id++) {
  if ((id->vendor == pci_get_vendor(dev)) &&
      (id->device == pci_get_device(dev))) {
   return (id);
  }
 }
 return (((void*)0));
}
