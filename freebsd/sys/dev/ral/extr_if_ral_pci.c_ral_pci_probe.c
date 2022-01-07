
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ral_pci_ident {scalar_t__ vendor; scalar_t__ device; int * name; } ;
typedef int device_t ;


 int BUS_PROBE_DEFAULT ;
 int ENXIO ;
 int device_set_desc (int ,int *) ;
 scalar_t__ pci_get_device (int ) ;
 scalar_t__ pci_get_vendor (int ) ;
 struct ral_pci_ident* ral_pci_ids ;

__attribute__((used)) static int
ral_pci_probe(device_t dev)
{
 const struct ral_pci_ident *ident;

 for (ident = ral_pci_ids; ident->name != ((void*)0); ident++) {
  if (pci_get_vendor(dev) == ident->vendor &&
      pci_get_device(dev) == ident->device) {
   device_set_desc(dev, ident->name);
   return (BUS_PROBE_DEFAULT);
  }
 }
 return ENXIO;
}
