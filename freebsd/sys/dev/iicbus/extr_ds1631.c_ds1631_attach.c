
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ich_arg; int ich_func; } ;
struct ds1631_softc {TYPE_1__ enum_hook; } ;
typedef int device_t ;


 int ENOMEM ;
 scalar_t__ config_intrhook_establish (TYPE_1__*) ;
 struct ds1631_softc* device_get_softc (int ) ;
 int ds1631_start ;

__attribute__((used)) static int
ds1631_attach(device_t dev)
{
 struct ds1631_softc *sc;

 sc = device_get_softc(dev);

 sc->enum_hook.ich_func = ds1631_start;
 sc->enum_hook.ich_arg = dev;
 if (config_intrhook_establish(&sc->enum_hook) != 0)
  return (ENOMEM);

 return (0);
}
