
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {void* ich_arg; int ich_func; } ;
struct ds1307_softc {int sc_mcp7941x; TYPE_1__ enum_hook; void* sc_dev; } ;
typedef void* device_t ;


 int ENOMEM ;
 scalar_t__ config_intrhook_establish (TYPE_1__*) ;
 struct ds1307_softc* device_get_softc (void*) ;
 int ds1307_start ;
 scalar_t__ ofw_bus_is_compatible (void*,char*) ;

__attribute__((used)) static int
ds1307_attach(device_t dev)
{
 struct ds1307_softc *sc;

 sc = device_get_softc(dev);
 sc->sc_dev = dev;
 sc->enum_hook.ich_func = ds1307_start;
 sc->enum_hook.ich_arg = dev;
 if (config_intrhook_establish(&sc->enum_hook) != 0)
  return (ENOMEM);

 return (0);
}
