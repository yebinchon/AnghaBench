
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct sfxge_softc {int enp; int ev_moderation; struct sfxge_evq** evq; } ;
struct TYPE_4__ {int esm_base; } ;
struct sfxge_evq {scalar_t__ init_state; int entries; int buf_base_id; int common; int read_ptr; TYPE_1__ mem; } ;
typedef TYPE_1__ efsys_mem_t ;


 int EFX_EVQ_FLAGS_TYPE_AUTO ;
 int EFX_EVQ_NBUFS (int ) ;
 int EFX_EVQ_SIZE (int ) ;
 int ETIMEDOUT ;
 int KASSERT (int,char*) ;
 scalar_t__ SFXGE_EVQ_INITIALIZED ;
 int SFXGE_EVQ_LOCK (struct sfxge_evq*) ;
 scalar_t__ SFXGE_EVQ_STARTED ;
 scalar_t__ SFXGE_EVQ_STARTING ;
 int SFXGE_EVQ_UNLOCK (struct sfxge_evq*) ;
 int efx_ev_qcreate (int ,unsigned int,TYPE_1__*,int ,int ,int ,int ,int *) ;
 int efx_ev_qdestroy (int ) ;
 int efx_ev_qprime (int ,int ) ;
 int efx_sram_buf_tbl_clear (int ,int ,int ) ;
 int efx_sram_buf_tbl_set (int ,int ,TYPE_1__*,int ) ;
 int hz ;
 int memset (int ,int,int ) ;
 int pause (char*,int) ;

__attribute__((used)) static int
sfxge_ev_qstart(struct sfxge_softc *sc, unsigned int index)
{
 struct sfxge_evq *evq;
 efsys_mem_t *esmp;
 int count;
 int rc;

 evq = sc->evq[index];
 esmp = &evq->mem;

 KASSERT(evq->init_state == SFXGE_EVQ_INITIALIZED,
     ("evq->init_state != SFXGE_EVQ_INITIALIZED"));


 (void)memset(esmp->esm_base, 0xff, EFX_EVQ_SIZE(evq->entries));


 if ((rc = efx_sram_buf_tbl_set(sc->enp, evq->buf_base_id, esmp,
     EFX_EVQ_NBUFS(evq->entries))) != 0)
  return (rc);


 if ((rc = efx_ev_qcreate(sc->enp, index, esmp, evq->entries,
     evq->buf_base_id, sc->ev_moderation, EFX_EVQ_FLAGS_TYPE_AUTO,
     &evq->common)) != 0)
  goto fail;

 SFXGE_EVQ_LOCK(evq);


 if ((rc = efx_ev_qprime(evq->common, evq->read_ptr)) != 0)
  goto fail2;

 evq->init_state = SFXGE_EVQ_STARTING;

 SFXGE_EVQ_UNLOCK(evq);


 count = 0;
 do {

  pause("sfxge evq init", hz / 10);


  if (evq->init_state == SFXGE_EVQ_STARTED)
   goto done;

 } while (++count < 20);

 rc = ETIMEDOUT;
 goto fail3;

done:
 return (0);

fail3:
 SFXGE_EVQ_LOCK(evq);
 evq->init_state = SFXGE_EVQ_INITIALIZED;
fail2:
 SFXGE_EVQ_UNLOCK(evq);
 efx_ev_qdestroy(evq->common);
fail:
 efx_sram_buf_tbl_clear(sc->enp, evq->buf_base_id,
     EFX_EVQ_NBUFS(evq->entries));

 return (rc);
}
