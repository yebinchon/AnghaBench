
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dwgpio_softc {int port; int gpio_npins; int sc_mtx; int * busdev; TYPE_1__* gpio_pins; int dev; int node; int parent; } ;
typedef int device_t ;
struct TYPE_2__ {int gp_pin; int gp_name; int gp_flags; int gp_caps; } ;


 int DEFAULT_CAPS ;
 int ENCODED_ID_PWIDTH_M ;
 int ENCODED_ID_PWIDTH_S (int) ;
 int ENXIO ;
 int GPIOMAXNAME ;
 int GPIO_CONFIG_REG2 ;
 int GPIO_PIN_INPUT ;
 int GPIO_PIN_OUTPUT ;
 int GPIO_SWPORT_DDR (int) ;
 int GPIO_VER_ID_CODE ;
 int MTX_DEF ;
 scalar_t__ OF_getencprop (int ,char*,int*,int) ;
 int RB_VERBOSE ;
 int READ4 (struct dwgpio_softc*,int ) ;
 int boothowto ;
 int device_get_nameunit (int ) ;
 int device_get_parent (int ) ;
 struct dwgpio_softc* device_get_softc (int ) ;
 int device_get_unit (int ) ;
 int device_printf (int ,char*,int) ;
 int * gpiobus_attach_bus (int ) ;
 int mtx_destroy (int *) ;
 int mtx_init (int *,int ,int *,int ) ;
 int ofw_bus_get_node (int ) ;
 int printf (char*,int) ;
 int snprintf (int ,int ,char*,int,int) ;

__attribute__((used)) static int
dwgpio_attach(device_t dev)
{
 struct dwgpio_softc *sc;
 int version;
 int nr_pins;
 int cfg2;
 int i;

 sc = device_get_softc(dev);
 sc->parent = device_get_parent(dev);
 sc->node = ofw_bus_get_node(dev);
 sc->dev = dev;
 mtx_init(&sc->sc_mtx, device_get_nameunit(dev), ((void*)0), MTX_DEF);

 if ((OF_getencprop(sc->node, "reg", &sc->port, sizeof(sc->port))) <= 0)
  return (ENXIO);

 printf("port %d\n", sc->port);

 version = READ4(sc, GPIO_VER_ID_CODE);
 if (boothowto & RB_VERBOSE)
  device_printf(sc->dev, "Version = 0x%08x\n", version);


 cfg2 = READ4(sc, GPIO_CONFIG_REG2);
 nr_pins = (cfg2 >> ENCODED_ID_PWIDTH_S(sc->port)) & ENCODED_ID_PWIDTH_M;

 sc->gpio_npins = nr_pins + 1;

 for (i = 0; i < sc->gpio_npins; i++) {
  sc->gpio_pins[i].gp_pin = i;
  sc->gpio_pins[i].gp_caps = DEFAULT_CAPS;
  sc->gpio_pins[i].gp_flags =
      (READ4(sc, GPIO_SWPORT_DDR(sc->port)) & (1 << i)) ?
      GPIO_PIN_OUTPUT: GPIO_PIN_INPUT;
  snprintf(sc->gpio_pins[i].gp_name, GPIOMAXNAME,
      "dwgpio%d.%d", device_get_unit(dev), i);
 }
 sc->busdev = gpiobus_attach_bus(dev);
 if (sc->busdev == ((void*)0)) {
  mtx_destroy(&sc->sc_mtx);
  return (ENXIO);
 }

 return (0);
}
