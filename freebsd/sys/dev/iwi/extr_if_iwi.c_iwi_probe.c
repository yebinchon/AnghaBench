
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwi_ident {scalar_t__ vendor; scalar_t__ device; int * name; } ;
typedef int device_t ;


 int BUS_PROBE_DEFAULT ;
 int ENXIO ;
 int device_set_desc (int ,int *) ;
 struct iwi_ident* iwi_ident_table ;
 scalar_t__ pci_get_device (int ) ;
 scalar_t__ pci_get_vendor (int ) ;

__attribute__((used)) static int
iwi_probe(device_t dev)
{
 const struct iwi_ident *ident;

 for (ident = iwi_ident_table; ident->name != ((void*)0); ident++) {
  if (pci_get_vendor(dev) == ident->vendor &&
      pci_get_device(dev) == ident->device) {
   device_set_desc(dev, ident->name);
   return (BUS_PROBE_DEFAULT);
  }
 }
 return ENXIO;
}
