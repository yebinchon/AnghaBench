
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct gpiobus_ivar {int npins; int rl; int * pins; } ;
struct ofw_gpiobus_devinfo {struct gpiobus_ivar opd_dinfo; int pin; int opd_obdinfo; } ;
struct gpiobus_softc {int dummy; } ;
struct gpiobus_pin {struct gpiobus_ivar opd_dinfo; int pin; int opd_obdinfo; } ;
typedef int phandle_t ;
typedef int device_t ;


 int M_DEVBUF ;
 int M_NOWAIT ;
 int M_ZERO ;
 struct gpiobus_softc* device_get_softc (int ) ;
 int device_set_ivars (int ,struct ofw_gpiobus_devinfo*) ;
 int free (struct ofw_gpiobus_devinfo*,int ) ;
 scalar_t__ gpiobus_alloc_ivars (struct gpiobus_ivar*) ;
 struct ofw_gpiobus_devinfo* malloc (int,int ,int) ;
 int ofw_bus_gen_destroy_devinfo (int *) ;
 scalar_t__ ofw_bus_gen_setup_devinfo (int *,int ) ;
 scalar_t__ ofw_bus_intr_to_rl (int ,int ,int *,int *) ;
 int ofw_gpiobus_destroy_devinfo (int ,struct ofw_gpiobus_devinfo*) ;
 int ofw_gpiobus_parse_gpios_impl (int ,int ,char*,struct gpiobus_softc*,struct ofw_gpiobus_devinfo**) ;
 int resource_list_init (int *) ;

__attribute__((used)) static struct ofw_gpiobus_devinfo *
ofw_gpiobus_setup_devinfo(device_t bus, device_t child, phandle_t node)
{
 int i, npins;
 struct gpiobus_ivar *devi;
 struct gpiobus_pin *pins;
 struct gpiobus_softc *sc;
 struct ofw_gpiobus_devinfo *dinfo;

 sc = device_get_softc(bus);
 dinfo = malloc(sizeof(*dinfo), M_DEVBUF, M_NOWAIT | M_ZERO);
 if (dinfo == ((void*)0))
  return (((void*)0));
 if (ofw_bus_gen_setup_devinfo(&dinfo->opd_obdinfo, node) != 0) {
  free(dinfo, M_DEVBUF);
  return (((void*)0));
 }

 npins = ofw_gpiobus_parse_gpios_impl(child, node, "gpios", sc, &pins);
 if (npins <= 0) {
  ofw_bus_gen_destroy_devinfo(&dinfo->opd_obdinfo);
  free(dinfo, M_DEVBUF);
  return (((void*)0));
 }

 resource_list_init(&dinfo->opd_dinfo.rl);

 devi = &dinfo->opd_dinfo;
 devi->npins = (uint32_t)npins;
 if (gpiobus_alloc_ivars(devi) != 0) {
  free(pins, M_DEVBUF);
  ofw_gpiobus_destroy_devinfo(bus, dinfo);
  return (((void*)0));
 }
 for (i = 0; i < devi->npins; i++)
  devi->pins[i] = pins[i].pin;
 free(pins, M_DEVBUF);

 if (ofw_bus_intr_to_rl(bus, node, &dinfo->opd_dinfo.rl, ((void*)0)) != 0) {
  ofw_gpiobus_destroy_devinfo(bus, dinfo);
  return (((void*)0));
 }
 device_set_ivars(child, dinfo);

 return (dinfo);
}
