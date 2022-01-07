
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct isl_softc {int isl_sx; } ;
typedef int device_t ;


 struct isl_softc* device_get_softc (int ) ;
 int sx_destroy (int *) ;

__attribute__((used)) static int
isl_detach(device_t dev)
{
 struct isl_softc *sc;

 sc = device_get_softc(dev);
 sx_destroy(&sc->isl_sx);

 return (0);
}
