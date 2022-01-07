
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mwl_pci_ident {int vendor; int device; int * name; } ;


 struct mwl_pci_ident* mwl_pci_ids ;

__attribute__((used)) const static struct mwl_pci_ident *
mwl_pci_lookup(int vendor, int device)
{
 const struct mwl_pci_ident *ident;

 for (ident = mwl_pci_ids; ident->name != ((void*)0); ident++)
  if (vendor == ident->vendor && device == ident->device)
   return ident;
 return ((void*)0);
}
