
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct rman {int dummy; } ;
struct resource {int dummy; } ;
struct ofw_pci_softc {int sc_pci_domain; } ;
typedef int rman_res_t ;
typedef int device_t ;


 int PCI_RES_BUS ;
 int RF_ACTIVE ;
 scalar_t__ bus_activate_resource (int ,int,int,struct resource*) ;
 struct resource* bus_generic_alloc_resource (int ,int ,int,int*,int ,int ,int ,int) ;
 int device_get_nameunit (int ) ;
 struct ofw_pci_softc* device_get_softc (int ) ;
 int device_printf (int ,char*,int ) ;
 struct rman* ofw_pci_get_rman (struct ofw_pci_softc*,int,int) ;
 struct resource* pci_domain_alloc_bus (int ,int ,int*,int ,int ,int ,int) ;
 int rman_release_resource (struct resource*) ;
 struct resource* rman_reserve_resource (struct rman*,int ,int ,int ,int,int ) ;
 int rman_set_rid (struct resource*,int) ;

__attribute__((used)) static struct resource *
ofw_pci_alloc_resource(device_t bus, device_t child, int type, int *rid,
    rman_res_t start, rman_res_t end, rman_res_t count, u_int flags)
{
 struct ofw_pci_softc *sc;
 struct resource *rv;
 struct rman *rm;
 int needactivate;


 needactivate = flags & RF_ACTIVE;
 flags &= ~RF_ACTIVE;

 sc = device_get_softc(bus);
 rm = ofw_pci_get_rman(sc, type, flags);
 if (rm == ((void*)0)) {
  return (bus_generic_alloc_resource(bus, child, type, rid,
      start, end, count, flags | needactivate));
 }

 rv = rman_reserve_resource(rm, start, end, count, flags, child);
 if (rv == ((void*)0)) {
  device_printf(bus, "failed to reserve resource for %s\n",
      device_get_nameunit(child));
  return (((void*)0));
 }

 rman_set_rid(rv, *rid);

 if (needactivate) {
  if (bus_activate_resource(child, type, *rid, rv) != 0) {
   device_printf(bus,
       "failed to activate resource for %s\n",
       device_get_nameunit(child));
   rman_release_resource(rv);
   return (((void*)0));
  }
 }

 return (rv);
}
