
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct agp_softc {int as_devnode; } ;
typedef int device_t ;


 int destroy_dev (int ) ;
 struct agp_softc* device_get_softc (int ) ;

void
agp_free_cdev(device_t dev)
{
 struct agp_softc *sc = device_get_softc(dev);

 destroy_dev(sc->as_devnode);
}
