
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pps_softc {TYPE_1__* gpin; int * ires; int irid; int * ihandler; int * pps_cdev; } ;
typedef int device_t ;
struct TYPE_2__ {int pin; int dev; } ;


 int GPIO_GET_BUS (int ) ;
 int SYS_RES_IRQ ;
 int bus_release_resource (int ,int ,int ,int *) ;
 int bus_teardown_intr (int ,int *,int *) ;
 int destroy_dev (int *) ;
 struct pps_softc* device_get_softc (int ) ;
 int gpiobus_release_pin (int ,int ) ;

__attribute__((used)) static int
gpiopps_detach(device_t dev)
{
 struct pps_softc *sc = device_get_softc(dev);

 if (sc->pps_cdev != ((void*)0))
  destroy_dev(sc->pps_cdev);
 if (sc->ihandler != ((void*)0))
  bus_teardown_intr(dev, sc->ires, sc->ihandler);
 if (sc->ires != ((void*)0))
  bus_release_resource(dev, SYS_RES_IRQ, sc->irid, sc->ires);
 if (sc->gpin != ((void*)0))
  gpiobus_release_pin(GPIO_GET_BUS(sc->gpin->dev), sc->gpin->pin);
 return (0);
}
