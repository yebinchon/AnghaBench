
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t uint32_t ;
struct mtk_gpio_softc {size_t bank_id; size_t num_pins; int * res; int * intrhand; int * busdev; TYPE_1__* pins; int dev; } ;
typedef int phandle_t ;
typedef int num_pins ;
typedef int device_t ;
typedef int bank_id ;
struct TYPE_2__ {int pin_caps; char* pin_name; int intr_trigger; int intr_polarity; } ;


 int ENXIO ;
 int GPIOMAXNAME ;
 int GPIO_PIN_INPUT ;
 int GPIO_PIN_INVIN ;
 int GPIO_PIN_INVOUT ;
 int GPIO_PIN_OUTPUT ;
 int INTR_MPSAFE ;
 int INTR_POLARITY_HIGH ;
 int INTR_TRIGGER_EDGE ;
 int INTR_TYPE_MISC ;
 int MTK_GPIO_LOCK_DESTROY (struct mtk_gpio_softc*) ;
 int MTK_GPIO_LOCK_INIT (struct mtk_gpio_softc*) ;
 size_t MTK_GPIO_PINS ;
 scalar_t__ OF_getencprop (int ,char*,size_t*,int) ;
 scalar_t__ OF_hasprop (int ,char*) ;
 int OF_xref_from_node (int ) ;
 scalar_t__ bus_alloc_resources (int ,int ,int *) ;
 int bus_release_resources (int ,int ,int *) ;
 scalar_t__ bus_setup_intr (int ,int ,int,int ,int *,struct mtk_gpio_softc*,int **) ;
 int bus_teardown_intr (int ,int ,int *) ;
 struct mtk_gpio_softc* device_get_softc (int ) ;
 int device_get_unit (int ) ;
 int device_printf (int ,char*) ;
 int * gpiobus_attach_bus (int ) ;
 int intr_pic_deregister (int ,int ) ;
 int * intr_pic_register (int ,int ) ;
 int mtk_gpio_intr ;
 int mtk_gpio_pin_probe (struct mtk_gpio_softc*,size_t) ;
 int mtk_gpio_spec ;
 scalar_t__ mtk_pic_register_isrcs (struct mtk_gpio_softc*) ;
 int mtk_soc_reset_device (int ) ;
 int mtk_soc_start_clock (int ) ;
 int ofw_bus_get_node (int ) ;
 int snprintf (char*,int,char*,int,size_t) ;

__attribute__((used)) static int
mtk_gpio_attach(device_t dev)
{
 struct mtk_gpio_softc *sc;
 phandle_t node;
 uint32_t i, num_pins, bank_id;

 sc = device_get_softc(dev);
 sc->dev = dev;

 if (bus_alloc_resources(dev, mtk_gpio_spec, sc->res)) {
  device_printf(dev, "could not allocate resources for device\n");
  return (ENXIO);
 }

 MTK_GPIO_LOCK_INIT(sc);

 node = ofw_bus_get_node(dev);

 if (OF_hasprop(node, "clocks"))
  mtk_soc_start_clock(dev);
 if (OF_hasprop(node, "resets"))
  mtk_soc_reset_device(dev);

 if (OF_hasprop(node, "mtk,bank-id") && (OF_getencprop(node,
     "mtk,bank-id", &bank_id, sizeof(bank_id)) >= 0))
  sc->bank_id = bank_id;
 else
  sc->bank_id = device_get_unit(dev);

 if (OF_hasprop(node, "mtk,num-pins") && (OF_getencprop(node,
     "mtk,num-pins", &num_pins, sizeof(num_pins)) >= 0))
  sc->num_pins = num_pins;
 else
  sc->num_pins = MTK_GPIO_PINS;

 for (i = 0; i < sc->num_pins; i++) {
  sc->pins[i].pin_caps |= GPIO_PIN_INPUT | GPIO_PIN_OUTPUT |
      GPIO_PIN_INVIN | GPIO_PIN_INVOUT;
  sc->pins[i].intr_polarity = INTR_POLARITY_HIGH;
  sc->pins[i].intr_trigger = INTR_TRIGGER_EDGE;

  snprintf(sc->pins[i].pin_name, GPIOMAXNAME - 1, "gpio%c%d",
      device_get_unit(dev) + 'a', i);
  sc->pins[i].pin_name[GPIOMAXNAME - 1] = '\0';

  mtk_gpio_pin_probe(sc, i);
 }

 if (mtk_pic_register_isrcs(sc) != 0) {
  device_printf(dev, "could not register PIC ISRCs\n");
  goto fail;
 }

 if (intr_pic_register(dev, OF_xref_from_node(node)) == ((void*)0)) {
  device_printf(dev, "could not register PIC\n");
  goto fail;
 }

 if (bus_setup_intr(dev, sc->res[1], INTR_TYPE_MISC | INTR_MPSAFE,
     mtk_gpio_intr, ((void*)0), sc, &sc->intrhand) != 0)
  goto fail_pic;

 sc->busdev = gpiobus_attach_bus(dev);
 if (sc->busdev == ((void*)0))
  goto fail_pic;

 return (0);
fail_pic:
 intr_pic_deregister(dev, OF_xref_from_node(node));
fail:
 if(sc->intrhand != ((void*)0))
  bus_teardown_intr(dev, sc->res[1], sc->intrhand);
 bus_release_resources(dev, mtk_gpio_spec, sc->res);
 MTK_GPIO_LOCK_DESTROY(sc);
 return (ENXIO);
}
