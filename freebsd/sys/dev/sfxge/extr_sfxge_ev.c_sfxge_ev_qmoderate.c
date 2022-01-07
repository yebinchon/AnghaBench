
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sfxge_softc {struct sfxge_evq** evq; } ;
struct sfxge_evq {scalar_t__ init_state; int * common; } ;
typedef int efx_evq_t ;


 int KASSERT (int,char*) ;
 scalar_t__ SFXGE_EVQ_STARTED ;
 int efx_ev_qmoderate (int *,unsigned int) ;

__attribute__((used)) static void
sfxge_ev_qmoderate(struct sfxge_softc *sc, unsigned int idx, unsigned int us)
{
 struct sfxge_evq *evq;
 efx_evq_t *eep;

 evq = sc->evq[idx];
 eep = evq->common;

 KASSERT(evq->init_state == SFXGE_EVQ_STARTED,
     ("evq->init_state != SFXGE_EVQ_STARTED"));

 (void)efx_ev_qmoderate(eep, us);
}
