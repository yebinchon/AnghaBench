
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct octeon_rnd_softc {int sc_callout; int * sc_entropy; } ;


 unsigned int OCTEON_RND_WORDS ;
 int RANDOM_PURE_OCTEON ;
 int callout_reset (int *,int,void (*) (void*),struct octeon_rnd_softc*) ;
 int cvmx_rng_get_random64 () ;
 int hz ;
 int random_harvest_queue (int *,int,int ) ;

__attribute__((used)) static void
octeon_rnd_harvest(void *arg)
{
 struct octeon_rnd_softc *sc;
 unsigned i;

 sc = arg;

 for (i = 0; i < OCTEON_RND_WORDS; i++)
  sc->sc_entropy[i] = cvmx_rng_get_random64();

 random_harvest_queue(sc->sc_entropy, sizeof sc->sc_entropy, RANDOM_PURE_OCTEON);

 callout_reset(&sc->sc_callout, hz * 5, octeon_rnd_harvest, sc);
}
