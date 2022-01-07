
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct jzsmb_softc {scalar_t__ bus_freq; int i2c_freq; int mtx; int * clk; int res; int * iicbus; } ;
typedef int phandle_t ;
typedef int device_t ;


 int ENXIO ;
 int MTX_DEF ;
 scalar_t__ OF_getencprop (int ,char*,int*,int) ;
 scalar_t__ bus_alloc_resources (int ,int ,int *) ;
 int bus_generic_attach (int ) ;
 int bus_release_resources (int ,int ,int *) ;
 int clk_enable (int *) ;
 int clk_get_by_ofw_index (int ,int ,int ,int **) ;
 int clk_get_freq (int *,scalar_t__*) ;
 int clk_release (int *) ;
 int * device_add_child (int ,char*,int) ;
 int device_get_nameunit (int ) ;
 struct jzsmb_softc* device_get_softc (int ) ;
 int device_printf (int ,char*) ;
 int jzsmb_spec ;
 int mtx_destroy (int *) ;
 int mtx_init (int *,int ,char*,int ) ;
 int ofw_bus_get_node (int ) ;

__attribute__((used)) static int
jzsmb_attach(device_t dev)
{
 struct jzsmb_softc *sc;
 phandle_t node;
 int error;

 sc = device_get_softc(dev);
 node = ofw_bus_get_node(dev);
 mtx_init(&sc->mtx, device_get_nameunit(dev), "jzsmb", MTX_DEF);

 error = clk_get_by_ofw_index(dev, 0, 0, &sc->clk);
 if (error != 0) {
  device_printf(dev, "cannot get clock\n");
  goto fail;
 }
 error = clk_enable(sc->clk);
 if (error != 0) {
  device_printf(dev, "cannot enable clock\n");
  goto fail;
 }
 error = clk_get_freq(sc->clk, &sc->bus_freq);
 if (error != 0 || sc->bus_freq == 0) {
  device_printf(dev, "cannot get bus frequency\n");
  return (error);
 }

 if (bus_alloc_resources(dev, jzsmb_spec, &sc->res) != 0) {
  device_printf(dev, "cannot allocate resources for device\n");
  error = ENXIO;
  goto fail;
 }

 if (OF_getencprop(node, "clock-frequency", &sc->i2c_freq,
     sizeof(sc->i2c_freq)) != 0 || sc->i2c_freq == 0)
  sc->i2c_freq = 100000;

 sc->iicbus = device_add_child(dev, "iicbus", -1);
 if (sc->iicbus == ((void*)0)) {
  device_printf(dev, "cannot add iicbus child device\n");
  error = ENXIO;
  goto fail;
 }

 bus_generic_attach(dev);

 return (0);

fail:
 bus_release_resources(dev, jzsmb_spec, &sc->res);
 if (sc->clk != ((void*)0))
  clk_release(sc->clk);
 mtx_destroy(&sc->mtx);
 return (error);
}
