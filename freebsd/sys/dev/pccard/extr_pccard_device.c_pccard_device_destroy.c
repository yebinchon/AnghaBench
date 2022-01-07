
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pccard_softc {scalar_t__ cisdev; } ;


 int destroy_dev (scalar_t__) ;

int
pccard_device_destroy(struct pccard_softc *sc)
{
 if (sc->cisdev)
  destroy_dev(sc->cisdev);
 return (0);
}
