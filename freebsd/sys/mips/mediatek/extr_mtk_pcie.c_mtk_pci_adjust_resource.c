
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rman {int dummy; } ;
struct resource {int dummy; } ;
struct mtk_pci_softc {struct rman sc_mem_rman; struct rman sc_io_rman; struct rman sc_irq_rman; } ;
typedef int rman_res_t ;
typedef int device_t ;






 int bus_generic_adjust_resource (int ,int ,int,struct resource*,int ,int ) ;
 struct mtk_pci_softc* device_get_softc (int ) ;
 int pci_domain_adjust_bus (int ,int ,struct resource*,int ,int ) ;
 int rman_adjust_resource (struct resource*,int ,int ) ;

__attribute__((used)) static int
mtk_pci_adjust_resource(device_t bus, device_t child, int type,
    struct resource *res, rman_res_t start, rman_res_t end)
{
 struct mtk_pci_softc *sc = device_get_softc(bus);
 struct rman *rm;

 switch (type) {
 case 131:
  return pci_domain_adjust_bus(0, child, res, start, end);
 case 129:
  rm = &sc->sc_irq_rman;
  break;
 case 130:
  rm = &sc->sc_io_rman;
  break;
 case 128:
  rm = &sc->sc_mem_rman;
  break;
 default:
  rm = ((void*)0);
  break;
 }

 if (rm != ((void*)0))
  return (rman_adjust_resource(res, start, end));

 return (bus_generic_adjust_resource(bus, child, type, res, start, end));
}
