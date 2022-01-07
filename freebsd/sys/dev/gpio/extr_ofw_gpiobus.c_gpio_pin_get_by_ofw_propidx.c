
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpiobus_pin {int pin; int flags; int * dev; } ;
typedef int phandle_t ;
typedef int pcell_t ;
typedef struct gpiobus_pin* gpio_pin_t ;
typedef int * device_t ;


 int EBUSY ;
 int ENODEV ;
 int ENXIO ;
 int * GPIO_GET_BUS (int *) ;
 int KASSERT (int,char*) ;
 int M_DEVBUF ;
 int M_WAITOK ;
 int M_ZERO ;
 int * OF_device_from_xref (int ) ;
 int OF_node_from_xref (int ) ;
 int OF_prop_free (int *) ;
 int gpio_map_gpios (int *,int ,int ,int,int *,int *,int *) ;
 int gpiobus_acquire_pin (int *,int ) ;
 struct gpiobus_pin* malloc (int,int ,int) ;
 int ofw_bus_parse_xref_list_alloc (int ,char*,char*,int,int *,int*,int **) ;

int
gpio_pin_get_by_ofw_propidx(device_t consumer, phandle_t cnode,
    char *prop_name, int idx, gpio_pin_t *out_pin)
{
 phandle_t xref;
 pcell_t *cells;
 device_t busdev;
 struct gpiobus_pin pin;
 int ncells, rv;

 KASSERT(consumer != ((void*)0) && cnode > 0,
     ("both consumer and cnode required"));

 rv = ofw_bus_parse_xref_list_alloc(cnode, prop_name, "#gpio-cells",
     idx, &xref, &ncells, &cells);
 if (rv != 0)
  return (rv);


 pin.dev = OF_device_from_xref(xref);
 if (pin.dev == ((void*)0)) {
  OF_prop_free(cells);
  return (ENODEV);
 }


 busdev = GPIO_GET_BUS(pin.dev);
 if (busdev == ((void*)0)) {
  OF_prop_free(cells);
  return (ENODEV);
 }


 rv = gpio_map_gpios(pin.dev, cnode, OF_node_from_xref(xref), ncells,
     cells, &pin.pin, &pin.flags);
 OF_prop_free(cells);
 if (rv != 0)
  return (ENXIO);


 rv = gpiobus_acquire_pin(busdev, pin.pin);
 if (rv != 0)
  return (EBUSY);

 *out_pin = malloc(sizeof(struct gpiobus_pin), M_DEVBUF,
     M_WAITOK | M_ZERO);
 **out_pin = pin;
 return (0);
}
