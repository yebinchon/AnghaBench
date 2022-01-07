
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pwmc_softc {int cdev; } ;
typedef int device_t ;


 int destroy_dev (int ) ;
 struct pwmc_softc* device_get_softc (int ) ;

__attribute__((used)) static int
pwmc_detach(device_t dev)
{
 struct pwmc_softc *sc;

 sc = device_get_softc(dev);
 destroy_dev(sc->cdev);

 return (0);
}
