
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mwl_pci_ident {int name; } ;
typedef int device_t ;


 int BUS_PROBE_DEFAULT ;
 int ENXIO ;
 int device_set_desc (int ,int ) ;
 struct mwl_pci_ident* mwl_pci_lookup (int ,int ) ;
 int pci_get_device (int ) ;
 int pci_get_vendor (int ) ;

__attribute__((used)) static int
mwl_pci_probe(device_t dev)
{
 const struct mwl_pci_ident *ident;

 ident = mwl_pci_lookup(pci_get_vendor(dev), pci_get_device(dev));
 if (ident != ((void*)0)) {
  device_set_desc(dev, ident->name);
  return BUS_PROBE_DEFAULT;
 }
 return ENXIO;
}
