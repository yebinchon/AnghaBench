
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct miiproxy_softc {int * mdio; int * proxy; int * parent; } ;
typedef int * device_t ;
struct TYPE_2__ {int name; } ;


 scalar_t__ bootverbose ;
 int bus_generic_attach (int *) ;
 int * device_add_child (int *,int ,int) ;
 int device_get_name (int *) ;
 char* device_get_nameunit (int *) ;
 struct miiproxy_softc* device_get_softc (int *) ;
 int device_get_unit (int *) ;
 int device_printf (int *,char*,...) ;
 TYPE_1__ miiproxy_driver ;
 int miiproxy_rendezvous_callback ;
 int printf (char*,char*) ;
 scalar_t__ rendezvous_register_proxy (int *,char const*,int ) ;
 scalar_t__ resource_string_value (int ,int ,char*,char const**) ;

device_t
mii_attach_proxy(device_t dev)
{
 struct miiproxy_softc *sc;
 int error;
 const char *name;
 device_t miiproxy;

 if (resource_string_value(device_get_name(dev),
     device_get_unit(dev), "mdio", &name) != 0) {
      if (bootverbose)
   printf("mii_attach_proxy: not attaching, no mdio"
       " device hint for %s\n", device_get_nameunit(dev));
  return (((void*)0));
 }

 miiproxy = device_add_child(dev, miiproxy_driver.name, -1);
 error = bus_generic_attach(dev);
 if (error != 0) {
  device_printf(dev, "can't attach miiproxy\n");
  return (((void*)0));
 }
 sc = device_get_softc(miiproxy);
 sc->parent = dev;
 sc->proxy = miiproxy;
 if (rendezvous_register_proxy(miiproxy, name, miiproxy_rendezvous_callback) != 0) {
  device_printf(dev, "can't attach proxy\n");
  return (((void*)0));
 }
 device_printf(miiproxy, "attached to target %s\n", device_get_nameunit(sc->mdio));
 return (miiproxy);
}
