
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mpc85xx_gpio_softc {int * in_res; int * out_res; } ;
typedef int device_t ;


 int GPIO_LOCK_DESTROY (struct mpc85xx_gpio_softc*) ;
 int SYS_RES_MEMORY ;
 int bus_release_resource (int ,int ,int ,int *) ;
 struct mpc85xx_gpio_softc* device_get_softc (int ) ;
 int gpiobus_detach_bus (int ) ;
 int rman_get_rid (int *) ;

__attribute__((used)) static int
mpc85xx_gpio_detach(device_t dev)
{
 struct mpc85xx_gpio_softc *sc = device_get_softc(dev);

 gpiobus_detach_bus(dev);

 if (sc->out_res != ((void*)0)) {

  bus_release_resource(dev, SYS_RES_MEMORY,
         rman_get_rid(sc->out_res), sc->out_res);
 }

 if (sc->in_res != ((void*)0)) {

  bus_release_resource(dev, SYS_RES_MEMORY,
         rman_get_rid(sc->in_res), sc->in_res);
 }

 GPIO_LOCK_DESTROY(sc);

 return (0);
}
