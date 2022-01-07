
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct sfxge_txq {size_t evq_index; scalar_t__ init_state; int type; unsigned int added; unsigned int pending; unsigned int completed; unsigned int reaped; unsigned int tso_fw_assisted; int hw_cksum_flags; int buf_base_id; scalar_t__ hw_vlan_tci; int max_pkt_desc; int flush_state; int common; int mem; } ;
struct sfxge_softc {unsigned int tso_fw_assisted; int txq_entries; int enp; scalar_t__ txq_dynamic_cksum_toggle_supported; struct sfxge_evq** evq; struct sfxge_txq** txq; } ;
struct sfxge_evq {scalar_t__ init_state; int common; } ;
typedef int efsys_mem_t ;


 int EFX_TXQ_CKSUM_IPV4 ;
 int EFX_TXQ_CKSUM_TCPUDP ;
 int EFX_TXQ_FATSOV2 ;
 int EFX_TXQ_NBUFS (int ) ;
 int ENOSPC ;
 int KASSERT (int,char*) ;
 int SFXGE_ADAPTER_LOCK_ASSERT_OWNED (struct sfxge_softc*) ;
 scalar_t__ SFXGE_EVQ_STARTED ;
 unsigned int SFXGE_FATSOV2 ;
 int SFXGE_FLUSH_REQUIRED ;
 scalar_t__ SFXGE_TXQ_INITIALIZED ;


 int SFXGE_TXQ_LOCK (struct sfxge_txq*) ;

 scalar_t__ SFXGE_TXQ_STARTED ;
 int SFXGE_TXQ_UNLOCK (struct sfxge_txq*) ;
 int efx_sram_buf_tbl_clear (int ,int ,int ) ;
 int efx_sram_buf_tbl_set (int ,int ,int *,int ) ;
 int efx_tx_qcreate (int ,unsigned int,unsigned int,int *,int ,int ,int,int ,int *,unsigned int*) ;
 int efx_tx_qenable (int ) ;
 int sfxge_tx_max_pkt_desc (struct sfxge_softc*,unsigned int,unsigned int) ;

__attribute__((used)) static int
sfxge_tx_qstart(struct sfxge_softc *sc, unsigned int index)
{
 struct sfxge_txq *txq;
 efsys_mem_t *esmp;
 uint16_t flags;
 unsigned int tso_fw_assisted;
 unsigned int label;
 struct sfxge_evq *evq;
 unsigned int desc_index;
 int rc;

 SFXGE_ADAPTER_LOCK_ASSERT_OWNED(sc);

 txq = sc->txq[index];
 esmp = &txq->mem;
 evq = sc->evq[txq->evq_index];

 KASSERT(txq->init_state == SFXGE_TXQ_INITIALIZED,
     ("txq->init_state != SFXGE_TXQ_INITIALIZED"));
 KASSERT(evq->init_state == SFXGE_EVQ_STARTED,
     ("evq->init_state != SFXGE_EVQ_STARTED"));


 if ((rc = efx_sram_buf_tbl_set(sc->enp, txq->buf_base_id, esmp,
     EFX_TXQ_NBUFS(sc->txq_entries))) != 0)
  return (rc);


 tso_fw_assisted = 0;
 switch (txq->type) {
 case 128:
  flags = 0;
  break;
 case 130:
  flags = EFX_TXQ_CKSUM_IPV4;
  break;
 case 129:
  flags = EFX_TXQ_CKSUM_IPV4 | EFX_TXQ_CKSUM_TCPUDP;
  tso_fw_assisted = sc->tso_fw_assisted;
  if (tso_fw_assisted & SFXGE_FATSOV2)
   flags |= EFX_TXQ_FATSOV2;
  break;
 default:
  KASSERT(0, ("Impossible TX queue"));
  flags = 0;
  break;
 }

 label = (sc->txq_dynamic_cksum_toggle_supported) ? 0 : txq->type;


 if ((rc = efx_tx_qcreate(sc->enp, index, label, esmp,
     sc->txq_entries, txq->buf_base_id, flags, evq->common,
     &txq->common, &desc_index)) != 0) {

  if ((rc != ENOSPC) || (~flags & EFX_TXQ_FATSOV2))
   goto fail;


  flags &= ~EFX_TXQ_FATSOV2;
  tso_fw_assisted &= ~SFXGE_FATSOV2;
  if ((rc = efx_tx_qcreate(sc->enp, index, label, esmp,
      sc->txq_entries, txq->buf_base_id, flags, evq->common,
      &txq->common, &desc_index)) != 0)
   goto fail;
 }


 txq->added = txq->pending = txq->completed = txq->reaped = desc_index;

 SFXGE_TXQ_LOCK(txq);


 efx_tx_qenable(txq->common);

 txq->init_state = SFXGE_TXQ_STARTED;
 txq->flush_state = SFXGE_FLUSH_REQUIRED;
 txq->tso_fw_assisted = tso_fw_assisted;

 txq->max_pkt_desc = sfxge_tx_max_pkt_desc(sc, txq->type,
        tso_fw_assisted);

 txq->hw_vlan_tci = 0;

 txq->hw_cksum_flags = flags &
         (EFX_TXQ_CKSUM_IPV4 | EFX_TXQ_CKSUM_TCPUDP);

 SFXGE_TXQ_UNLOCK(txq);

 return (0);

fail:
 efx_sram_buf_tbl_clear(sc->enp, txq->buf_base_id,
     EFX_TXQ_NBUFS(sc->txq_entries));
 return (rc);
}
