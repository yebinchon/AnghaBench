
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sfxge_softc {int rxq_entries; int enp; struct sfxge_evq** evq; struct sfxge_rxq** rxq; } ;
struct sfxge_rxq {scalar_t__ init_state; int buf_base_id; int flush_state; int common; int mem; } ;
struct sfxge_evq {scalar_t__ init_state; int common; } ;
typedef int efsys_mem_t ;


 int B_FALSE ;
 int EFX_RXQ_FLAG_NONE ;
 int EFX_RXQ_LIMIT (int ) ;
 int EFX_RXQ_NBUFS (int ) ;
 int EFX_RXQ_TYPE_DEFAULT ;
 int KASSERT (int,char*) ;
 int SFXGE_ADAPTER_LOCK_ASSERT_OWNED (struct sfxge_softc*) ;
 int SFXGE_EVQ_LOCK (struct sfxge_evq*) ;
 scalar_t__ SFXGE_EVQ_STARTED ;
 int SFXGE_EVQ_UNLOCK (struct sfxge_evq*) ;
 int SFXGE_FLUSH_REQUIRED ;
 scalar_t__ SFXGE_RXQ_INITIALIZED ;
 scalar_t__ SFXGE_RXQ_STARTED ;
 int efx_rx_qcreate (int ,unsigned int,int ,int ,int *,int ,int ,int ,int ,int *) ;
 int efx_rx_qenable (int ) ;
 int efx_sram_buf_tbl_clear (int ,int ,int ) ;
 int efx_sram_buf_tbl_set (int ,int ,int *,int ) ;
 int sfxge_rx_qfill (struct sfxge_rxq*,int ,int ) ;

__attribute__((used)) static int
sfxge_rx_qstart(struct sfxge_softc *sc, unsigned int index)
{
 struct sfxge_rxq *rxq;
 efsys_mem_t *esmp;
 struct sfxge_evq *evq;
 int rc;

 SFXGE_ADAPTER_LOCK_ASSERT_OWNED(sc);

 rxq = sc->rxq[index];
 esmp = &rxq->mem;
 evq = sc->evq[index];

 KASSERT(rxq->init_state == SFXGE_RXQ_INITIALIZED,
     ("rxq->init_state != SFXGE_RXQ_INITIALIZED"));
 KASSERT(evq->init_state == SFXGE_EVQ_STARTED,
     ("evq->init_state != SFXGE_EVQ_STARTED"));


 if ((rc = efx_sram_buf_tbl_set(sc->enp, rxq->buf_base_id, esmp,
     EFX_RXQ_NBUFS(sc->rxq_entries))) != 0)
  return (rc);


 if ((rc = efx_rx_qcreate(sc->enp, index, 0, EFX_RXQ_TYPE_DEFAULT,
     esmp, sc->rxq_entries, rxq->buf_base_id, EFX_RXQ_FLAG_NONE,
     evq->common, &rxq->common)) != 0)
  goto fail;

 SFXGE_EVQ_LOCK(evq);


 efx_rx_qenable(rxq->common);

 rxq->init_state = SFXGE_RXQ_STARTED;
 rxq->flush_state = SFXGE_FLUSH_REQUIRED;


 sfxge_rx_qfill(rxq, EFX_RXQ_LIMIT(sc->rxq_entries), B_FALSE);

 SFXGE_EVQ_UNLOCK(evq);

 return (0);

fail:
 efx_sram_buf_tbl_clear(sc->enp, rxq->buf_base_id,
     EFX_RXQ_NBUFS(sc->rxq_entries));
 return (rc);
}
