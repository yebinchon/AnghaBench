
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {void* ich_arg; int ich_func; } ;
struct lm75_softc {TYPE_1__ enum_hook; int sc_addr; void* sc_dev; } ;
typedef void* device_t ;


 int ENOMEM ;
 scalar_t__ config_intrhook_establish (TYPE_1__*) ;
 struct lm75_softc* device_get_softc (void*) ;
 int iicbus_get_addr (void*) ;
 int lm75_start ;

__attribute__((used)) static int
lm75_attach(device_t dev)
{
 struct lm75_softc *sc;

 sc = device_get_softc(dev);
 sc->sc_dev = dev;
 sc->sc_addr = iicbus_get_addr(dev);

 sc->enum_hook.ich_func = lm75_start;
 sc->enum_hook.ich_arg = dev;





 if (config_intrhook_establish(&sc->enum_hook) != 0)
  return (ENOMEM);

 return (0);
}
