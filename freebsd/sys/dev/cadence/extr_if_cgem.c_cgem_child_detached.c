
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cgem_softc {int * miibus; } ;
typedef int * device_t ;


 struct cgem_softc* device_get_softc (int *) ;

__attribute__((used)) static void
cgem_child_detached(device_t dev, device_t child)
{
 struct cgem_softc *sc = device_get_softc(dev);

 if (child == sc->miibus)
  sc->miibus = ((void*)0);
}
