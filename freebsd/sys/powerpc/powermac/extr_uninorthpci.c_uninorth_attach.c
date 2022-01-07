
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* vm_offset_t ;
typedef int uint64_t ;
typedef int uint32_t ;
struct uninorth_softc {int sc_ver; int sc_skipslot; int sc_cfg_mtx; void* sc_data; void* sc_addr; } ;
typedef int reg ;
typedef int phandle_t ;
typedef int device_t ;
typedef int cell_t ;
typedef int acells ;


 int ENXIO ;
 int MTX_SPIN ;
 int OF_getprop (int ,char*,int*,int) ;
 int OF_parent (int ) ;
 int PAGE_SIZE ;
 char* device_get_name (int ) ;
 struct uninorth_softc* device_get_softc (int ) ;
 int device_get_unit (int ) ;
 int mtx_init (int *,char*,int *,int ) ;
 char* ofw_bus_get_compat (int ) ;
 int ofw_bus_get_node (int ) ;
 int ofw_pci_attach (int ) ;
 scalar_t__ pmap_mapdev (int,int ) ;
 scalar_t__ resource_int_value (char const*,int,char*,int*) ;
 scalar_t__ strcmp (char const*,char*) ;

__attribute__((used)) static int
uninorth_attach(device_t dev)
{
 struct uninorth_softc *sc;
 const char *compatible;
 const char *name;
 phandle_t node;
 uint32_t reg[3];
 uint64_t regbase;
 cell_t acells;
 int unit;

 node = ofw_bus_get_node(dev);
 sc = device_get_softc(dev);
 name = device_get_name(dev);
 unit = device_get_unit(dev);

 if (OF_getprop(node, "reg", reg, sizeof(reg)) < 8)
  return (ENXIO);

 sc->sc_ver = 0;
 compatible = ofw_bus_get_compat(dev);
 if (strcmp(compatible, "u3-agp") == 0)
  sc->sc_ver = 3;
 if (strcmp(compatible, "u4-pcie") == 0)
  sc->sc_ver = 4;

 acells = 1;
 OF_getprop(OF_parent(node), "#address-cells", &acells, sizeof(acells));

 regbase = reg[0];
 if (acells == 2) {
  regbase <<= 32;
  regbase |= reg[1];
 }

 sc->sc_addr = (vm_offset_t)pmap_mapdev(regbase + 0x800000, PAGE_SIZE);
 sc->sc_data = (vm_offset_t)pmap_mapdev(regbase + 0xc00000, PAGE_SIZE);

 if (resource_int_value(name, unit, "skipslot", &sc->sc_skipslot) != 0)
  sc->sc_skipslot = -1;

 mtx_init(&sc->sc_cfg_mtx, "uninorth pcicfg", ((void*)0), MTX_SPIN);

 return (ofw_pci_attach(dev));
}
