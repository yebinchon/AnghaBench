
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct ofw_cpulist_softc {int sc_addr_cells; } ;
struct ofw_cpu_softc {int* sc_reg; int sc_reg_valid; int sc_nominal_mhz; int * sc_cpu_pcpu; } ;
struct cpuref {scalar_t__ cr_hwref; int cr_cpuid; } ;
typedef int phandle_t ;
typedef int pcell_t ;
typedef int device_t ;
typedef int clk_t ;
typedef scalar_t__ cell_t ;
typedef int cell ;


 int EINVAL ;
 int ENOENT ;
 int ENXIO ;
 int OF_getencprop (int ,char*,int*,int) ;
 int OF_getencprop_alloc (int ,char*,void**) ;
 scalar_t__ OF_hasprop (int ,char*) ;
 int OF_prop_free (scalar_t__*) ;
 scalar_t__ bootverbose ;
 int bus_generic_attach (int ) ;
 int bus_generic_probe (int ) ;
 int clk_get_by_ofw_index (int ,int ,int ,int *) ;
 int clk_get_freq (int ,int*) ;
 int device_get_parent (int ) ;
 void* device_get_softc (int ) ;
 int device_get_unit (int ) ;
 int device_printf (int ,char*,...) ;
 int nitems (int*) ;
 int ofw_bus_get_node (int ) ;
 void* pcpu_find (int ) ;
 int platform_smp_first_cpu (struct cpuref*) ;
 int platform_smp_next_cpu (struct cpuref*) ;

__attribute__((used)) static int
ofw_cpu_attach(device_t dev)
{
 struct ofw_cpulist_softc *psc;
 struct ofw_cpu_softc *sc;
 phandle_t node;
 pcell_t cell;
 int rv;





 sc = device_get_softc(dev);
 psc = device_get_softc(device_get_parent(dev));

 if (nitems(sc->sc_reg) < psc->sc_addr_cells) {
  if (bootverbose)
   device_printf(dev, "Too many address cells\n");
  return (EINVAL);
 }

 node = ofw_bus_get_node(dev);


 sc->sc_reg_valid = 0;
 rv = OF_getencprop(node, "reg", sc->sc_reg, sizeof(sc->sc_reg));
 if (rv < 0)
  device_printf(dev, "missing 'reg' property\n");
 else if ((rv % 4) != 0) {
  if (bootverbose)
   device_printf(dev, "Malformed reg property\n");
 } else if ((rv / 4) != psc->sc_addr_cells) {
  if (bootverbose)
   device_printf(dev, "Invalid reg size %u\n", rv);
 } else
  sc->sc_reg_valid = 1;
 sc->sc_cpu_pcpu = pcpu_find(device_get_unit(dev));

 if (OF_getencprop(node, "clock-frequency", &cell, sizeof(cell)) < 0) {
  {
   if (bootverbose)
    device_printf(dev,
        "missing 'clock-frequency' property\n");
  }
 } else
  sc->sc_nominal_mhz = cell / 1000000;

 if (sc->sc_nominal_mhz != 0 && bootverbose)
  device_printf(dev, "Nominal frequency %dMhz\n",
      sc->sc_nominal_mhz);
 bus_generic_probe(dev);
 return (bus_generic_attach(dev));
}
