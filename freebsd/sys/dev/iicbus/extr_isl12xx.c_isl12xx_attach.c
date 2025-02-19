
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct isl12xx_softc* ich_arg; int ich_func; } ;
struct isl12xx_softc {TYPE_1__ init_hook; int dev; int busdev; } ;
typedef int device_t ;


 int ENOMEM ;
 scalar_t__ config_intrhook_establish (TYPE_1__*) ;
 int device_get_parent (int ) ;
 struct isl12xx_softc* device_get_softc (int ) ;
 int isl12xx_init ;

__attribute__((used)) static int
isl12xx_attach(device_t dev)
{
 struct isl12xx_softc *sc = device_get_softc(dev);

 sc->dev = dev;
 sc->busdev = device_get_parent(sc->dev);





 sc->init_hook.ich_func = isl12xx_init;
 sc->init_hook.ich_arg = sc;
 if (config_intrhook_establish(&sc->init_hook) != 0)
  return (ENOMEM);

 return (0);
}
