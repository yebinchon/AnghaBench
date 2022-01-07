
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct octeon_rnd_softc {int sc_callout; } ;
typedef int device_t ;


 int callout_init (int *,int) ;
 int callout_reset (int *,int,int ,struct octeon_rnd_softc*) ;
 int cvmx_rng_enable () ;
 struct octeon_rnd_softc* device_get_softc (int ) ;
 int hz ;
 int octeon_rnd_harvest ;

__attribute__((used)) static int
octeon_rnd_attach(device_t dev)
{
 struct octeon_rnd_softc *sc;

 sc = device_get_softc(dev);
 callout_init(&sc->sc_callout, 1);
 callout_reset(&sc->sc_callout, hz * 5, octeon_rnd_harvest, sc);

 cvmx_rng_enable();

 return (0);
}
