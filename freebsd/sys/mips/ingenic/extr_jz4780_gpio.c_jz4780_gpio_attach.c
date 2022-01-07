
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t uint32_t ;
struct jz4780_gpio_softc {int * res; int * intrhand; int * busdev; TYPE_1__* pins; int dev; } ;
typedef int pu_pins ;
typedef int phandle_t ;
typedef int pd_pins ;
typedef int device_t ;
struct TYPE_2__ {size_t pin_num; int pin_caps; char* pin_name; int intr_trigger; int intr_polarity; } ;


 int ENXIO ;
 int GPIOMAXNAME ;
 int GPIO_PIN_INPUT ;
 int GPIO_PIN_OUTPUT ;
 int GPIO_PIN_PULLDOWN ;
 int GPIO_PIN_PULLUP ;
 int INTR_MPSAFE ;
 int INTR_POLARITY_CONFORM ;
 int INTR_TRIGGER_CONFORM ;
 int INTR_TYPE_MISC ;
 int JZ4780_GPIO_LOCK_DESTROY (struct jz4780_gpio_softc*) ;
 int JZ4780_GPIO_LOCK_INIT (struct jz4780_gpio_softc*) ;
 size_t JZ4780_GPIO_PINS ;
 int OF_getencprop (int ,char*,size_t*,int) ;
 int OF_xref_from_node (int ) ;
 scalar_t__ bus_alloc_resources (int ,int ,int *) ;
 int bus_release_resources (int ,int ,int *) ;
 scalar_t__ bus_setup_intr (int ,int ,int,int ,int *,struct jz4780_gpio_softc*,int **) ;
 int bus_teardown_intr (int ,int ,int *) ;
 struct jz4780_gpio_softc* device_get_softc (int ) ;
 int device_get_unit (int ) ;
 int device_printf (int ,char*) ;
 int * gpiobus_attach_bus (int ) ;
 int intr_pic_deregister (int ,int ) ;
 int * intr_pic_register (int ,int ) ;
 int jz4780_gpio_intr ;
 int jz4780_gpio_pin_probe (struct jz4780_gpio_softc*,size_t) ;
 scalar_t__ jz4780_gpio_register_isrcs (struct jz4780_gpio_softc*) ;
 int jz4780_gpio_spec ;
 int ofw_bus_get_node (int ) ;
 int snprintf (char*,int,char*,int,size_t) ;

__attribute__((used)) static int
jz4780_gpio_attach(device_t dev)
{
 struct jz4780_gpio_softc *sc = device_get_softc(dev);
 phandle_t node;
 uint32_t i, pd_pins, pu_pins;

 sc->dev = dev;

 if (bus_alloc_resources(dev, jz4780_gpio_spec, sc->res)) {
  device_printf(dev, "could not allocate resources for device\n");
  return (ENXIO);
 }

 JZ4780_GPIO_LOCK_INIT(sc);

 node = ofw_bus_get_node(dev);
 OF_getencprop(node, "ingenic,pull-ups", &pu_pins, sizeof(pu_pins));
 OF_getencprop(node, "ingenic,pull-downs", &pd_pins, sizeof(pd_pins));

 for (i = 0; i < JZ4780_GPIO_PINS; i++) {
  sc->pins[i].pin_num = i;
  sc->pins[i].pin_caps |= GPIO_PIN_INPUT | GPIO_PIN_OUTPUT;
  if (pu_pins & (1 << i))
   sc->pins[i].pin_caps |= GPIO_PIN_PULLUP;
  if (pd_pins & (1 << i))
   sc->pins[i].pin_caps |= GPIO_PIN_PULLDOWN;
  sc->pins[i].intr_polarity = INTR_POLARITY_CONFORM;
  sc->pins[i].intr_trigger = INTR_TRIGGER_CONFORM;

  snprintf(sc->pins[i].pin_name, GPIOMAXNAME - 1, "gpio%c%d",
      device_get_unit(dev) + 'a', i);
  sc->pins[i].pin_name[GPIOMAXNAME - 1] = '\0';

  jz4780_gpio_pin_probe(sc, i);
 }

 if (jz4780_gpio_register_isrcs(sc) != 0)
  goto fail;

 if (intr_pic_register(dev, OF_xref_from_node(node)) == ((void*)0)) {
  device_printf(dev, "could not register PIC\n");
  goto fail;
 }

 if (bus_setup_intr(dev, sc->res[1], INTR_TYPE_MISC | INTR_MPSAFE,
     jz4780_gpio_intr, ((void*)0), sc, &sc->intrhand) != 0)
  goto fail_pic;

 sc->busdev = gpiobus_attach_bus(dev);
 if (sc->busdev == ((void*)0))
  goto fail_pic;

 return (0);
fail_pic:
 intr_pic_deregister(dev, OF_xref_from_node(node));
fail:
 if (sc->intrhand != ((void*)0))
  bus_teardown_intr(dev, sc->res[1], sc->intrhand);
 bus_release_resources(dev, jz4780_gpio_spec, sc->res);
 JZ4780_GPIO_LOCK_DESTROY(sc);
 return (ENXIO);
}
