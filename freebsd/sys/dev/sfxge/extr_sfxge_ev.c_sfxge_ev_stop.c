
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sfxge_intr {scalar_t__ state; } ;
struct sfxge_softc {int evq_count; int * enp; struct sfxge_intr intr; } ;
typedef int efx_nic_t ;


 int KASSERT (int,char*) ;
 scalar_t__ SFXGE_INTR_STARTED ;
 int efx_ev_fini (int *) ;
 int sfxge_ev_qstop (struct sfxge_softc*,int) ;

void
sfxge_ev_stop(struct sfxge_softc *sc)
{
 struct sfxge_intr *intr;
 efx_nic_t *enp;
 int index;

 intr = &sc->intr;
 enp = sc->enp;

 KASSERT(intr->state == SFXGE_INTR_STARTED,
     ("Interrupts not started"));


 index = sc->evq_count;
 while (--index >= 0)
  sfxge_ev_qstop(sc, index);


 efx_ev_fini(enp);
}
