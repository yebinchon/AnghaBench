
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct firewire_softc {int dev; } ;


 int destroy_dev (int ) ;

int
fwdev_destroydev(struct firewire_softc *sc)
{
 int err = 0;

 destroy_dev(sc->dev);
 return (err);
}
