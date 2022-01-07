
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rman {int dummy; } ;
struct resource {int dummy; } ;
struct generic_pcie_core_softc {int ecam; } ;
typedef int rman_res_t ;
typedef int device_t ;


 int PCI_RES_BUS ;
 int bus_generic_adjust_resource (int ,int ,int,struct resource*,int ,int ) ;
 struct generic_pcie_core_softc* device_get_softc (int ) ;
 struct rman* generic_pcie_rman (struct generic_pcie_core_softc*,int) ;
 int pci_domain_adjust_bus (int ,int ,struct resource*,int ,int ) ;
 int rman_adjust_resource (struct resource*,int ,int ) ;

__attribute__((used)) static int
generic_pcie_adjust_resource(device_t dev, device_t child, int type,
    struct resource *res, rman_res_t start, rman_res_t end)
{
 struct generic_pcie_core_softc *sc;
 struct rman *rm;

 sc = device_get_softc(dev);






 rm = generic_pcie_rman(sc, type);
 if (rm != ((void*)0))
  return (rman_adjust_resource(res, start, end));
 return (bus_generic_adjust_resource(dev, child, type, res, start, end));
}
