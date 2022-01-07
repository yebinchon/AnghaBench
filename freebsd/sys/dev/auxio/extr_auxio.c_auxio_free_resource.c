
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct auxio_softc {int sc_nauxio; scalar_t__* sc_res; int * sc_rid; int sc_dev; } ;


 int AUXIO_LOCK_DESTROY (struct auxio_softc*) ;
 int SYS_RES_MEMORY ;
 int bus_release_resource (int ,int ,int ,scalar_t__) ;

__attribute__((used)) static void
auxio_free_resource(struct auxio_softc *sc)
{
 int i;

 for (i = 0; i < sc->sc_nauxio; i++)
  if (sc->sc_res[i])
   bus_release_resource(sc->sc_dev, SYS_RES_MEMORY,
       sc->sc_rid[i], sc->sc_res[i]);
 AUXIO_LOCK_DESTROY(sc);
}
