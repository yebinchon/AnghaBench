
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct sfxge_txq {int added; int ptr_mask; scalar_t__ n_pend_desc; scalar_t__ max_pkt_desc; int tso_bursts; int tso_pdrop_no_rsrc; int tso_pdrop_too_many; TYPE_1__* stmp; } ;
struct sfxge_tso_state {unsigned int header_len; unsigned int in_len; unsigned int dma_addr; scalar_t__ packet_space; scalar_t__ segs_space; int fw_assisted; } ;
struct mbuf {int dummy; } ;
struct TYPE_6__ {unsigned int ds_len; unsigned int ds_addr; } ;
typedef TYPE_2__ bus_dma_segment_t ;
struct TYPE_5__ {scalar_t__ flags; } ;


 int EFX_TX_FATSOV2_OPT_NDESCS ;
 int KASSERT (int,char*) ;
 int SFXGE_FATSOV1 ;
 int SFXGE_FATSOV2 ;
 scalar_t__ __predict_false (int ) ;
 int tso_fill_packet_with_fragment (struct sfxge_txq*,struct sfxge_tso_state*) ;
 int tso_start (struct sfxge_txq*,struct sfxge_tso_state*,TYPE_2__ const*,struct mbuf*) ;
 int tso_start_new_packet (struct sfxge_txq*,struct sfxge_tso_state*,unsigned int*) ;

__attribute__((used)) static int
sfxge_tx_queue_tso(struct sfxge_txq *txq, struct mbuf *mbuf,
     const bus_dma_segment_t *dma_seg, int n_dma_seg,
     int n_extra_descs)
{
 struct sfxge_tso_state tso;
 unsigned int id;
 unsigned skipped = 0;

 tso_start(txq, &tso, dma_seg, mbuf);

 while (dma_seg->ds_len + skipped <= tso.header_len) {
  skipped += dma_seg->ds_len;
  --n_dma_seg;
  KASSERT(n_dma_seg, ("no payload found in TSO packet"));
  ++dma_seg;
 }
 tso.in_len = dma_seg->ds_len - (tso.header_len - skipped);
 tso.dma_addr = dma_seg->ds_addr + (tso.header_len - skipped);

 id = (txq->added + n_extra_descs) & txq->ptr_mask;
 if (__predict_false(tso_start_new_packet(txq, &tso, &id)))
  return (-1);

 while (1) {
  tso_fill_packet_with_fragment(txq, &tso);

  KASSERT(txq->stmp[id].flags == 0, ("stmp flags are not 0"));
  id = (id + 1) & txq->ptr_mask;


  if (tso.in_len == 0) {
   --n_dma_seg;
   if (n_dma_seg == 0)
    break;
   ++dma_seg;
   tso.in_len = dma_seg->ds_len;
   tso.dma_addr = dma_seg->ds_addr;
  }


  if ((tso.packet_space == 0) | (tso.segs_space == 0)) {
   unsigned int n_fatso_opt_desc =
       (tso.fw_assisted & SFXGE_FATSOV2) ?
       EFX_TX_FATSOV2_OPT_NDESCS :
       (tso.fw_assisted & SFXGE_FATSOV1) ? 1 : 0;






   if (txq->n_pend_desc + n_fatso_opt_desc +
       1 + n_dma_seg > txq->max_pkt_desc) {
    txq->tso_pdrop_too_many++;
    break;
   }
   if (__predict_false(tso_start_new_packet(txq, &tso,
         &id))) {
    txq->tso_pdrop_no_rsrc++;
    break;
   }
  }
 }

 txq->tso_bursts++;
 return (id);
}
