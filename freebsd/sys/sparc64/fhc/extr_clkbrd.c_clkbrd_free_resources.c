
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clkbrd_softc {int ** sc_res; int * sc_rid; int sc_dev; } ;


 int CLKBRD_CF ;
 int CLKBRD_CLKVER ;
 int SYS_RES_MEMORY ;
 int bus_release_resource (int ,int ,int ,int *) ;

__attribute__((used)) static void
clkbrd_free_resources(struct clkbrd_softc *sc)
{
 int i;

 for (i = CLKBRD_CF; i <= CLKBRD_CLKVER; i++)
  if (sc->sc_res[i] != ((void*)0))
   bus_release_resource(sc->sc_dev, SYS_RES_MEMORY,
       sc->sc_rid[i], sc->sc_res[i]);
}
