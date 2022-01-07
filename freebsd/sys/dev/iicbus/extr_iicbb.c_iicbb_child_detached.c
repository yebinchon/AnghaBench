
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iicbb_softc {int * iicbus; } ;
typedef int * device_t ;


 scalar_t__ device_get_softc (int *) ;

__attribute__((used)) static void
iicbb_child_detached( device_t dev, device_t child )
{
 struct iicbb_softc *sc = (struct iicbb_softc *)device_get_softc(dev);

 if (child == sc->iicbus)
  sc->iicbus = ((void*)0);
}
