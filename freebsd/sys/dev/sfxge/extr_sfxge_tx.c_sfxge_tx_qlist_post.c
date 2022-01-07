
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sfxge_txq {scalar_t__ n_pend_desc; scalar_t__ max_pkt_desc; int blocked; unsigned int added; unsigned int reaped; unsigned int entries; int pend_desc; int common; } ;


 unsigned int EFX_TXQ_LIMIT (unsigned int) ;
 int KASSERT (int,char*) ;
 int SFXGE_TXQ_LOCK_ASSERT_OWNED (struct sfxge_txq*) ;
 int efx_tx_qdesc_post (int ,int ,scalar_t__,unsigned int,unsigned int*) ;
 int mb () ;
 int sfxge_tx_qreap (struct sfxge_txq*) ;

__attribute__((used)) static void
sfxge_tx_qlist_post(struct sfxge_txq *txq)
{
 unsigned int old_added;
 unsigned int block_level;
 unsigned int level;
 int rc;

 SFXGE_TXQ_LOCK_ASSERT_OWNED(txq);

 KASSERT(txq->n_pend_desc != 0, ("txq->n_pend_desc == 0"));
 KASSERT(txq->n_pend_desc <= txq->max_pkt_desc,
  ("txq->n_pend_desc too large"));
 KASSERT(!txq->blocked, ("txq->blocked"));

 old_added = txq->added;


 rc = efx_tx_qdesc_post(txq->common, txq->pend_desc, txq->n_pend_desc,
     txq->reaped, &txq->added);
 KASSERT(rc == 0, ("efx_tx_qdesc_post() failed"));





 KASSERT(txq->added - old_added == txq->n_pend_desc,
  ("efx_tx_qdesc_post() refragmented descriptors"));

 level = txq->added - txq->reaped;
 KASSERT(level <= txq->entries, ("overfilled TX queue"));


 txq->n_pend_desc = 0;





 block_level = EFX_TXQ_LIMIT(txq->entries) - txq->max_pkt_desc;


 if (level < block_level)
  return;


 sfxge_tx_qreap(txq);
 level = txq->added - txq->reaped;
 if (level < block_level)
  return;

 txq->blocked = 1;





 mb();
 sfxge_tx_qreap(txq);
 level = txq->added - txq->reaped;
 if (level < block_level) {
  mb();
  txq->blocked = 0;
 }
}
