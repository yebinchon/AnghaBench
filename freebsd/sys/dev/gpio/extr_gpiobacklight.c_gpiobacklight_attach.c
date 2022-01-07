
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sysctl_oid {int dummy; } ;
struct sysctl_ctx_list {int dummy; } ;
struct gpiobacklight_softc {int sc_brightness; int sc_oid; int * sc_pin; } ;
typedef int phandle_t ;
typedef int device_t ;


 int CTLFLAG_RW ;
 int CTLTYPE_INT ;
 int ENXIO ;
 int GPIO_PIN_OUTPUT ;
 scalar_t__ OF_hasprop (int,char*) ;
 int OID_AUTO ;
 int SYSCTL_ADD_PROC (struct sysctl_ctx_list*,int ,int ,char*,int,struct gpiobacklight_softc*,int ,int ,char*,char*) ;
 int SYSCTL_CHILDREN (struct sysctl_oid*) ;
 struct gpiobacklight_softc* device_get_softc (int ) ;
 struct sysctl_ctx_list* device_get_sysctl_ctx (int ) ;
 struct sysctl_oid* device_get_sysctl_tree (int ) ;
 int device_printf (int ,char*) ;
 int gpio_pin_get_by_ofw_idx (int ,int,int ,int **) ;
 int gpio_pin_setflags (int *,int ) ;
 int gpiobacklight_sysctl ;
 int gpiobacklight_update_brightness (struct gpiobacklight_softc*) ;
 int ofw_bus_get_node (int ) ;

__attribute__((used)) static int
gpiobacklight_attach(device_t dev)
{
 struct gpiobacklight_softc *sc;
 struct sysctl_ctx_list *ctx;
 struct sysctl_oid *tree;
 phandle_t node;

 sc = device_get_softc(dev);

 if ((node = ofw_bus_get_node(dev)) == -1)
  return (ENXIO);

 if (OF_hasprop(node, "default-on"))
  sc->sc_brightness = 1;
 else
  sc->sc_brightness = 0;

 gpio_pin_get_by_ofw_idx(dev, node, 0, &sc->sc_pin);
 if (sc->sc_pin == ((void*)0)) {
  device_printf(dev, "failed to map GPIO pin\n");
  return (ENXIO);
 }

 gpio_pin_setflags(sc->sc_pin, GPIO_PIN_OUTPUT);

 gpiobacklight_update_brightness(sc);


 ctx = device_get_sysctl_ctx(dev);
 tree = device_get_sysctl_tree(dev);
 sc->sc_oid = SYSCTL_ADD_PROC(ctx, SYSCTL_CHILDREN(tree), OID_AUTO,
     "brightness", CTLTYPE_INT | CTLFLAG_RW, sc, 0,
     gpiobacklight_sysctl, "I", "backlight brightness");

 return (0);
}
