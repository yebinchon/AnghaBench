
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtwn_pci_ident {int vendor; int device; int * name; } ;
typedef int device_t ;


 int pci_get_device (int ) ;
 int pci_get_vendor (int ) ;
 struct rtwn_pci_ident* rtwn_pci_ident_table ;

__attribute__((used)) static const struct rtwn_pci_ident *
rtwn_pci_probe_sub(device_t dev)
{
 const struct rtwn_pci_ident *ident;
 int vendor_id, device_id;

 vendor_id = pci_get_vendor(dev);
 device_id = pci_get_device(dev);

 for (ident = rtwn_pci_ident_table; ident->name != ((void*)0); ident++)
  if (vendor_id == ident->vendor && device_id == ident->device)
   return (ident);

 return (((void*)0));
}
