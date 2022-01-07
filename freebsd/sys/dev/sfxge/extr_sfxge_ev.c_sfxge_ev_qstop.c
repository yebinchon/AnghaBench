
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sfxge_softc {int enp; struct sfxge_evq** evq; } ;
struct sfxge_evq {scalar_t__ init_state; int entries; int buf_base_id; int common; int stats; int exception; scalar_t__ read_ptr; } ;


 int B_FALSE ;
 int EFX_EVQ_NBUFS (int ) ;
 int KASSERT (int,char*) ;
 scalar_t__ SFXGE_EVQ_INITIALIZED ;
 int SFXGE_EVQ_LOCK (struct sfxge_evq*) ;
 scalar_t__ SFXGE_EVQ_STARTED ;
 int SFXGE_EVQ_UNLOCK (struct sfxge_evq*) ;
 int efx_ev_qdestroy (int ) ;
 int efx_ev_qstats_update (int ,int ) ;
 int efx_sram_buf_tbl_clear (int ,int ,int ) ;

__attribute__((used)) static void
sfxge_ev_qstop(struct sfxge_softc *sc, unsigned int index)
{
 struct sfxge_evq *evq;

 evq = sc->evq[index];

 KASSERT(evq->init_state == SFXGE_EVQ_STARTED,
     ("evq->init_state != SFXGE_EVQ_STARTED"));

 SFXGE_EVQ_LOCK(evq);
 evq->init_state = SFXGE_EVQ_INITIALIZED;
 evq->read_ptr = 0;
 evq->exception = B_FALSE;






 efx_ev_qdestroy(evq->common);
 efx_sram_buf_tbl_clear(sc->enp, evq->buf_base_id,
     EFX_EVQ_NBUFS(evq->entries));
 SFXGE_EVQ_UNLOCK(evq);
}
