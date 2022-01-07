
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpiobus_softc {int sc_busdev; int sc_dev; } ;
struct gpiobus_pin {int pin; int flags; int * dev; } ;
typedef scalar_t__ phandle_t ;
typedef scalar_t__ pcell_t ;
typedef int gpiocells ;
typedef int device_t ;


 int * GPIO_GET_BUS (int *) ;
 int M_DEVBUF ;
 int M_NOWAIT ;
 int M_ZERO ;
 int * OF_device_from_xref (scalar_t__) ;
 scalar_t__ OF_getencprop (scalar_t__,char*,int*,int) ;
 int OF_getencprop_alloc_multi (scalar_t__,char*,int,void**) ;
 int OF_hasprop (scalar_t__,char*) ;
 scalar_t__ OF_node_from_xref (scalar_t__) ;
 int OF_prop_free (scalar_t__*) ;
 int device_get_nameunit (int *) ;
 struct gpiobus_softc* device_get_softc (int *) ;
 int device_printf (int ,char*,...) ;
 int free (struct gpiobus_pin*,int ) ;
 scalar_t__ gpio_map_gpios (int *,scalar_t__,scalar_t__,int,scalar_t__*,int *,int *) ;
 scalar_t__ gpiobus_acquire_pin (int ,int ) ;
 struct gpiobus_pin* malloc (int,int ,int) ;
 scalar_t__ ofw_bus_get_node (int ) ;

__attribute__((used)) static int
ofw_gpiobus_parse_gpios_impl(device_t consumer, phandle_t cnode, char *pname,
 struct gpiobus_softc *bussc, struct gpiobus_pin **pins)
{
 int gpiocells, i, j, ncells, npins;
 pcell_t *gpios;
 phandle_t gpio;

 ncells = OF_getencprop_alloc_multi(cnode, pname, sizeof(*gpios),
            (void **)&gpios);
 if (ncells == -1) {
  device_printf(consumer,
      "Warning: No %s specified in fdt data; "
      "device may not function.\n", pname);
  return (-1);
 }





 i = 0;
 npins = 0;
 while (i < ncells) {

  if (gpios[i] == 0) {
   npins++;
   i++;
   continue;
  }
  gpio = OF_node_from_xref(gpios[i]);

  if (bussc != ((void*)0))
   if (ofw_bus_get_node(bussc->sc_dev) != gpio)
    return (0);




  if (!OF_hasprop(gpio, "gpio-controller") ||
      OF_getencprop(gpio, "#gpio-cells", &gpiocells,
      sizeof(gpiocells)) < 0) {
   device_printf(consumer,
       "gpio reference is not a gpio-controller.\n");
   OF_prop_free(gpios);
   return (-1);
  }
  if (ncells - i < gpiocells + 1) {
   device_printf(consumer,
       "%s cells doesn't match #gpio-cells.\n", pname);
   return (-1);
  }
  npins++;
  i += gpiocells + 1;
 }
 if (npins == 0 || pins == ((void*)0)) {
  if (npins == 0)
   device_printf(consumer, "no pin specified in %s.\n",
       pname);
  OF_prop_free(gpios);
  return (npins);
 }
 *pins = malloc(sizeof(struct gpiobus_pin) * npins, M_DEVBUF,
     M_NOWAIT | M_ZERO);
 if (*pins == ((void*)0)) {
  OF_prop_free(gpios);
  return (-1);
 }

 i = 0;
 j = 0;
 while (i < ncells) {

  if (gpios[i] == 0) {
   j++;
   i++;
   continue;
  }
  gpio = OF_node_from_xref(gpios[i]);

  if (OF_getencprop(gpio, "#gpio-cells", &gpiocells,
      sizeof(gpiocells)) < 0) {
   device_printf(consumer,
       "gpio does not have the #gpio-cells property.\n");
   goto fail;
  }

  (*pins)[j].dev = OF_device_from_xref(gpios[i]);
  if ((*pins)[j].dev == ((void*)0)) {
   device_printf(consumer,
       "no device registered for the gpio controller.\n");
   goto fail;
  }





  if (bussc == ((void*)0)) {
   if (GPIO_GET_BUS((*pins)[j].dev) == ((void*)0)) {
    device_printf(consumer,
        "no gpiobus reference for %s.\n",
        device_get_nameunit((*pins)[j].dev));
    goto fail;
   }
   bussc = device_get_softc(GPIO_GET_BUS((*pins)[j].dev));
  }

  if (gpio_map_gpios((*pins)[j].dev, cnode, gpio, gpiocells,
      &gpios[i + 1], &(*pins)[j].pin, &(*pins)[j].flags) != 0) {
   device_printf(consumer,
       "cannot map the gpios specifier.\n");
   goto fail;
  }

  if (gpiobus_acquire_pin(bussc->sc_busdev, (*pins)[j].pin) != 0)
   goto fail;
  j++;
  i += gpiocells + 1;
 }
 OF_prop_free(gpios);

 return (npins);

fail:
 OF_prop_free(gpios);
 free(*pins, M_DEVBUF);
 return (-1);
}
