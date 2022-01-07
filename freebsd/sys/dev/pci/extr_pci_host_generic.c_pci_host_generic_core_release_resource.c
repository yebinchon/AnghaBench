
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rman {int dummy; } ;
struct resource {int dummy; } ;
struct generic_pcie_core_softc {int ecam; } ;
typedef int device_t ;


 int KASSERT (int ,char*) ;
 int PCI_RES_BUS ;
 int bus_generic_release_resource (int ,int ,int,int,struct resource*) ;
 struct generic_pcie_core_softc* device_get_softc (int ) ;
 struct rman* generic_pcie_rman (struct generic_pcie_core_softc*,int) ;
 int pci_domain_release_bus (int ,int ,int,struct resource*) ;
 int rman_is_region_manager (struct resource*,struct rman*) ;
 int rman_release_resource (struct resource*) ;

int
pci_host_generic_core_release_resource(device_t dev, device_t child, int type,
    int rid, struct resource *res)
{
 struct generic_pcie_core_softc *sc;
 struct rman *rm;

 sc = device_get_softc(dev);







 rm = generic_pcie_rman(sc, type);
 if (rm != ((void*)0)) {
  KASSERT(rman_is_region_manager(res, rm), ("rman mismatch"));
  rman_release_resource(res);
 }

 return (bus_generic_release_resource(dev, child, type, rid, res));
}
