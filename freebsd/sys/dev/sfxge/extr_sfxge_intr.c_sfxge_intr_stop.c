
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sfxge_intr {scalar_t__ state; } ;
struct sfxge_softc {int enp; struct sfxge_intr intr; } ;


 int KASSERT (int,char*) ;
 scalar_t__ SFXGE_INTR_INITIALIZED ;
 scalar_t__ SFXGE_INTR_STARTED ;
 int efx_intr_disable (int ) ;
 int efx_intr_fini (int ) ;
 int sfxge_intr_bus_disable (struct sfxge_softc*) ;

void
sfxge_intr_stop(struct sfxge_softc *sc)
{
 struct sfxge_intr *intr;

 intr = &sc->intr;

 KASSERT(intr->state == SFXGE_INTR_STARTED,
     ("Interrupts not started"));

 intr->state = SFXGE_INTR_INITIALIZED;


 efx_intr_disable(sc->enp);


 sfxge_intr_bus_disable(sc);


 efx_intr_fini(sc->enp);
}
