
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rman {int dummy; } ;
struct resource {int dummy; } ;
struct ofw_pci_softc {int sc_pci_domain; } ;
typedef int rman_res_t ;
typedef int device_t ;


 int KASSERT (int,char*) ;
 int PCI_RES_BUS ;
 int RF_ACTIVE ;
 int bus_generic_adjust_resource (int ,int ,int,struct resource*,int ,int ) ;
 struct ofw_pci_softc* device_get_softc (int ) ;
 struct rman* ofw_pci_get_rman (struct ofw_pci_softc*,int,int) ;
 int pci_domain_adjust_bus (int ,int ,struct resource*,int ,int ) ;
 int rman_adjust_resource (struct resource*,int ,int ) ;
 int rman_get_flags (struct resource*) ;
 int rman_is_region_manager (struct resource*,struct rman*) ;

__attribute__((used)) static int
ofw_pci_adjust_resource(device_t bus, device_t child, int type,
    struct resource *res, rman_res_t start, rman_res_t end)
{
 struct rman *rm;
 struct ofw_pci_softc *sc;

 sc = device_get_softc(bus);






 rm = ofw_pci_get_rman(sc, type, rman_get_flags(res));
 if (rm == ((void*)0)) {
  return (bus_generic_adjust_resource(bus, child, type, res,
      start, end));
 }
 KASSERT(rman_is_region_manager(res, rm), ("rman mismatch"));
 KASSERT(!(rman_get_flags(res) & RF_ACTIVE),
     ("active resources cannot be adjusted"));

 return (rman_adjust_resource(res, start, end));
}
