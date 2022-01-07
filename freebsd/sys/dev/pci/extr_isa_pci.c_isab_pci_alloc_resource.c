
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_int ;
struct resource {int dummy; } ;
struct isab_pci_softc {TYPE_1__* isab_pci_res; } ;
typedef int rman_res_t ;
typedef scalar_t__ device_t ;
struct TYPE_2__ {struct resource* ip_res; int ip_refs; } ;


 struct resource* BUS_ALLOC_RESOURCE (scalar_t__,scalar_t__,int,int*,int ,int ,int ,int ) ;
 int PCIR_MAX_BAR_0 ;
 int PCI_RID2BAR (int) ;


 struct resource* bus_alloc_resource (scalar_t__,int,int*,int ,int ,int ,int ) ;
 struct resource* bus_generic_alloc_resource (scalar_t__,scalar_t__,int,int*,int ,int ,int ,int ) ;
 scalar_t__ device_get_parent (scalar_t__) ;
 struct isab_pci_softc* device_get_softc (scalar_t__) ;

__attribute__((used)) static struct resource *
isab_pci_alloc_resource(device_t dev, device_t child, int type, int *rid,
    rman_res_t start, rman_res_t end, rman_res_t count, u_int flags)
{
 struct isab_pci_softc *sc;
 int bar;

 if (device_get_parent(child) != dev)
  return bus_generic_alloc_resource(dev, child, type, rid, start,
      end, count, flags);

 switch (type) {
 case 128:
 case 129:




  bar = PCI_RID2BAR(*rid);
  if (bar < 0 || bar > PCIR_MAX_BAR_0)
   return (((void*)0));
  sc = device_get_softc(dev);
  if (sc->isab_pci_res[bar].ip_res == ((void*)0))
   sc->isab_pci_res[bar].ip_res = bus_alloc_resource(dev, type,
       rid, start, end, count, flags);
  if (sc->isab_pci_res[bar].ip_res != ((void*)0))
   sc->isab_pci_res[bar].ip_refs++;
  return (sc->isab_pci_res[bar].ip_res);
 }

 return (BUS_ALLOC_RESOURCE(device_get_parent(dev), child, type, rid,
  start, end, count, flags));
}
