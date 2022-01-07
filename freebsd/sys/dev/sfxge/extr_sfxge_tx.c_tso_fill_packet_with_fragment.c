
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct sfxge_txq {int common; int n_pend_desc; int * pend_desc; } ;
struct sfxge_tso_state {int dma_addr; int in_len; int packet_space; int fw_assisted; scalar_t__ out_len; int seqnum; int segs_space; int seg_size; } ;
typedef int efx_desc_t ;
typedef int boolean_t ;


 int EFX_TX_FATSOV2_DMA_SEGS_PER_PKT_MAX ;
 int KASSERT (int,char*) ;
 int SFXGE_FATSOV2 ;
 int efx_tx_qdesc_dma_create (int ,int,int,int,int *) ;
 int min (int,int) ;

__attribute__((used)) static void tso_fill_packet_with_fragment(struct sfxge_txq *txq,
       struct sfxge_tso_state *tso)
{
 efx_desc_t *desc;
 int n;
 uint64_t dma_addr = tso->dma_addr;
 boolean_t eop;

 if (tso->in_len == 0 || tso->packet_space == 0)
  return;

 KASSERT(tso->in_len > 0, ("TSO input length went negative"));
 KASSERT(tso->packet_space > 0, ("TSO packet space went negative"));

 if (tso->fw_assisted & SFXGE_FATSOV2) {
  n = tso->in_len;
  tso->out_len -= n;
  tso->seqnum += n;
  tso->in_len = 0;
  if (n < tso->packet_space) {
   tso->packet_space -= n;
   tso->segs_space--;
  } else {
   tso->packet_space = tso->seg_size -
       (n - tso->packet_space) % tso->seg_size;
   tso->segs_space =
       EFX_TX_FATSOV2_DMA_SEGS_PER_PKT_MAX - 1 -
       (tso->packet_space != tso->seg_size);
  }
 } else {
  n = min(tso->in_len, tso->packet_space);
  tso->packet_space -= n;
  tso->out_len -= n;
  tso->dma_addr += n;
  tso->in_len -= n;
 }





 eop = (tso->out_len == 0) | (tso->packet_space == 0) |
     (tso->segs_space == 0);

 desc = &txq->pend_desc[txq->n_pend_desc++];
 efx_tx_qdesc_dma_create(txq->common, dma_addr, n, eop, desc);
}
