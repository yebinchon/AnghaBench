
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct icee_softc {int cdev; } ;
typedef int device_t ;


 int destroy_dev (int ) ;
 struct icee_softc* device_get_softc (int ) ;

__attribute__((used)) static int
icee_detach(device_t dev)
{
 struct icee_softc *sc = device_get_softc(dev);

 destroy_dev(sc->cdev);
 return (0);
}
