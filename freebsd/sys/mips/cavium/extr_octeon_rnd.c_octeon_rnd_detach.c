
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct octeon_rnd_softc {int sc_callout; } ;
typedef int device_t ;


 int callout_stop (int *) ;
 struct octeon_rnd_softc* device_get_softc (int ) ;

__attribute__((used)) static int
octeon_rnd_detach(device_t dev)
{
 struct octeon_rnd_softc *sc;

 sc = device_get_softc(dev);

 callout_stop(&sc->sc_callout);

 return (0);
}
