
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long long uint64_t ;
typedef scalar_t__ uint32_t ;
struct jz4780_nemc_softc {scalar_t__ clock_tick_psecs; int clk; int simplebus_sc; int res; int dev; } ;
typedef scalar_t__ phandle_t ;
typedef int device_t ;


 int ENXIO ;
 scalar_t__ OF_child (scalar_t__) ;
 scalar_t__ OF_peer (scalar_t__) ;
 scalar_t__ bus_alloc_resources (int ,int ,int ) ;
 int bus_generic_attach (int ) ;
 int bus_generic_probe (int ) ;
 scalar_t__ clk_enable (int ) ;
 scalar_t__ clk_get_by_ofw_index (int ,int ,int ,int *) ;
 scalar_t__ clk_get_freq (int ,unsigned long long*) ;
 struct jz4780_nemc_softc* device_get_softc (int ) ;
 int device_printf (int ,char*) ;
 int jz4780_nemc_detach (int ) ;
 scalar_t__ jz4780_nemc_fill_ranges (scalar_t__,int *) ;
 int jz4780_nemc_spec ;
 scalar_t__ ofw_bus_get_node (int ) ;
 int simplebus_add_device (int ,scalar_t__,int ,int *,int,int *) ;
 int simplebus_init (int ,scalar_t__) ;

__attribute__((used)) static int
jz4780_nemc_attach(device_t dev)
{
 struct jz4780_nemc_softc *sc = device_get_softc(dev);
 phandle_t node;
 uint64_t freq;

 sc->dev = dev;

 if (bus_alloc_resources(dev, jz4780_nemc_spec, sc->res)) {
  device_printf(dev, "could not allocate resources for device\n");
  return (ENXIO);
 }

 node = ofw_bus_get_node(dev);


 simplebus_init(dev, node);

 if (jz4780_nemc_fill_ranges(node, &sc->simplebus_sc) < 0)
  goto error;


 if (clk_get_by_ofw_index(dev, 0, 0, &sc->clk) != 0) {
  device_printf(dev, "could not lookup device clock\n");
  goto error;
 }
 if (clk_enable(sc->clk) != 0) {
  device_printf(dev, "could not enable device clock\n");
  goto error;
 }
 if (clk_get_freq(sc->clk, &freq) != 0) {
  device_printf(dev, "could not determine clock speed\n");
  goto error;
 }


 sc->clock_tick_psecs = (uint32_t)(1000000000000ULL / freq);




 bus_generic_probe(dev);




 for (node = OF_child(node); node > 0; node = OF_peer(node))
  simplebus_add_device(dev, node, 0, ((void*)0), -1, ((void*)0));

 return (bus_generic_attach(dev));
error:
 jz4780_nemc_detach(dev);
 return (ENXIO);
}
