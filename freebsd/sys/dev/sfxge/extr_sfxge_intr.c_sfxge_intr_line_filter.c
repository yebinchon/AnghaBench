
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct sfxge_intr {scalar_t__ type; scalar_t__ state; scalar_t__ zero_count; } ;
struct sfxge_softc {struct sfxge_intr intr; int * enp; } ;
struct sfxge_evq {scalar_t__ init_state; int read_ptr; int common; struct sfxge_softc* sc; } ;
typedef int efx_nic_t ;
typedef scalar_t__ boolean_t ;


 scalar_t__ EFX_INTR_LINE ;
 int FILTER_HANDLED ;
 int FILTER_SCHEDULE_THREAD ;
 int FILTER_STRAY ;
 int KASSERT (int,char*) ;
 scalar_t__ SFXGE_EVQ_STARTED ;
 scalar_t__ SFXGE_INTR_STARTED ;
 scalar_t__ efx_ev_qpending (int ,int ) ;
 int efx_ev_qprime (int ,int ) ;
 int efx_intr_disable (int *) ;
 int efx_intr_fatal (int *) ;
 int efx_intr_status_line (int *,scalar_t__*,scalar_t__*) ;

__attribute__((used)) static int
sfxge_intr_line_filter(void *arg)
{
 struct sfxge_evq *evq;
 struct sfxge_softc *sc;
 efx_nic_t *enp;
 struct sfxge_intr *intr;
 boolean_t fatal;
 uint32_t qmask;

 evq = (struct sfxge_evq *)arg;
 sc = evq->sc;
 enp = sc->enp;
 intr = &sc->intr;

 KASSERT(intr != ((void*)0), ("intr == NULL"));
 KASSERT(intr->type == EFX_INTR_LINE,
     ("intr->type != EFX_INTR_LINE"));

 if (intr->state != SFXGE_INTR_STARTED)
  return (FILTER_STRAY);

 (void)efx_intr_status_line(enp, &fatal, &qmask);

 if (fatal) {
  (void) efx_intr_disable(enp);
  (void) efx_intr_fatal(enp);
  return (FILTER_HANDLED);
 }

 if (qmask != 0) {
  intr->zero_count = 0;
  return (FILTER_SCHEDULE_THREAD);
 }
 if (intr->zero_count++ == 0) {
  if (evq->init_state == SFXGE_EVQ_STARTED) {
   if (efx_ev_qpending(evq->common, evq->read_ptr))
    return (FILTER_SCHEDULE_THREAD);
   efx_ev_qprime(evq->common, evq->read_ptr);
   return (FILTER_HANDLED);
  }
 }

 return (FILTER_STRAY);
}
