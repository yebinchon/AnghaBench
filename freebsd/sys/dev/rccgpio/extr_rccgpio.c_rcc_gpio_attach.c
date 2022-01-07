
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct rcc_gpio_softc {int sc_gpio_npins; int sc_mtx; int * sc_io_res; scalar_t__ sc_io_rid; int * sc_busdev; int sc_output; int sc_bsh; int sc_bst; int sc_dev; } ;
typedef int device_t ;
struct TYPE_3__ {int caps; int pin; } ;


 int ENXIO ;
 int GPIO_PIN_OUTPUT ;
 int MTX_DEF ;
 int RCC_GPIO_GP_LVL ;
 int RCC_GPIO_IO_SEL ;
 int RCC_GPIO_USE_SEL ;
 int RCC_WRITE (struct rcc_gpio_softc*,int ,int ) ;
 int RF_ACTIVE ;
 int SYS_RES_IOPORT ;
 int * bus_alloc_resource_any (int ,int ,scalar_t__*,int ) ;
 int bus_release_resource (int ,int ,scalar_t__,int *) ;
 struct rcc_gpio_softc* device_get_softc (int ) ;
 int device_printf (int ,char*) ;
 int * gpiobus_attach_bus (int ) ;
 int mtx_destroy (int *) ;
 int mtx_init (int *,char*,char*,int ) ;
 int nitems (TYPE_1__*) ;
 int rcc_gpio_modify_bits (struct rcc_gpio_softc*,int ,int ,int ) ;
 TYPE_1__* rcc_pins ;
 int rman_get_bushandle (int *) ;
 int rman_get_bustag (int *) ;

__attribute__((used)) static int
rcc_gpio_attach(device_t dev)
{
 int i;
 struct rcc_gpio_softc *sc;

 sc = device_get_softc(dev);
  sc->sc_dev = dev;


 sc->sc_io_rid = 0;
 sc->sc_io_res = bus_alloc_resource_any(dev, SYS_RES_IOPORT,
     &sc->sc_io_rid, RF_ACTIVE);
 if (sc->sc_io_res == ((void*)0)) {
  device_printf(dev, "cannot allocate memory window\n");
  return (ENXIO);
 }
 sc->sc_bst = rman_get_bustag(sc->sc_io_res);
 sc->sc_bsh = rman_get_bushandle(sc->sc_io_res);
 mtx_init(&sc->sc_mtx, "rcc-gpio", "gpio", MTX_DEF);


 sc->sc_gpio_npins = nitems(rcc_pins);
 for (i = 0; i < sc->sc_gpio_npins; i++) {

  rcc_gpio_modify_bits(sc, RCC_GPIO_USE_SEL, 0, rcc_pins[i].pin);

  if (rcc_pins[i].caps & GPIO_PIN_OUTPUT)
   rcc_gpio_modify_bits(sc, RCC_GPIO_IO_SEL,
       rcc_pins[i].pin, 0);
  else
   rcc_gpio_modify_bits(sc, RCC_GPIO_IO_SEL,
       0, rcc_pins[i].pin);
 }
 RCC_WRITE(sc, RCC_GPIO_GP_LVL, sc->sc_output);


 sc->sc_busdev = gpiobus_attach_bus(dev);
 if (sc->sc_busdev == ((void*)0)) {
  bus_release_resource(dev, SYS_RES_IOPORT, sc->sc_io_rid,
      sc->sc_io_res);
  mtx_destroy(&sc->sc_mtx);
  return (ENXIO);
 }

 return (0);
}
