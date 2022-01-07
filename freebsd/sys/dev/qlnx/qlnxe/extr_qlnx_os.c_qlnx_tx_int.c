
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint16_t ;
typedef scalar_t__ u16 ;
struct TYPE_3__ {int raw; } ;
struct qlnx_tx_queue {int sw_tx_cons; TYPE_2__* sw_tx_ring; int tx_pbl; TYPE_1__ tx_db; int * hw_cons_ptr; } ;
struct qlnx_fastpath {int err_tx_cons_idx_conflict; int rss_id; } ;
typedef int qlnx_host_t ;
struct TYPE_4__ {int mp; } ;


 int QL_DPRINT1 (int *,char*,int,int ,int ,scalar_t__,scalar_t__,int ,int ) ;
 int QL_ERR_INJCT_TX_INT_DIFF ;
 scalar_t__ QL_ERR_INJECT (int *,int ) ;
 int QL_RESET_ERR_INJECT (int *,int ) ;
 int TX_RING_SIZE ;
 scalar_t__ ecore_chain_get_cons_idx (int *) ;
 int ecore_chain_get_elem_left (int *) ;
 int ecore_chain_get_prod_idx (int *) ;
 scalar_t__ le16toh (int ) ;
 int prefetch (int ) ;
 int qlnx_free_tx_pkt (int *,struct qlnx_fastpath*,struct qlnx_tx_queue*) ;
 int qlnx_trigger_dump (int *) ;

__attribute__((used)) static void
qlnx_tx_int(qlnx_host_t *ha, struct qlnx_fastpath *fp,
 struct qlnx_tx_queue *txq)
{
 u16 hw_bd_cons;
 u16 ecore_cons_idx;
 uint16_t diff;
 uint16_t idx, idx2;

 hw_bd_cons = le16toh(*txq->hw_cons_ptr);

 while (hw_bd_cons !=
  (ecore_cons_idx = ecore_chain_get_cons_idx(&txq->tx_pbl))) {

  if (hw_bd_cons < ecore_cons_idx) {
   diff = (1 << 16) - (ecore_cons_idx - hw_bd_cons);
  } else {
   diff = hw_bd_cons - ecore_cons_idx;
  }
  if ((diff > TX_RING_SIZE) ||
   QL_ERR_INJECT(ha, QL_ERR_INJCT_TX_INT_DIFF)){

   QL_RESET_ERR_INJECT(ha, QL_ERR_INJCT_TX_INT_DIFF);

   QL_DPRINT1(ha, "(diff = 0x%x) "
    " tx_idx = 0x%x"
    " ecore_prod_idx = 0x%x"
    " ecore_cons_idx = 0x%x"
    " hw_bd_cons = 0x%x"
    " txq_db_last = 0x%x"
    " elem_left = 0x%x\n",
    diff,
    fp->rss_id,
    ecore_chain_get_prod_idx(&txq->tx_pbl),
    ecore_chain_get_cons_idx(&txq->tx_pbl),
    le16toh(*txq->hw_cons_ptr),
    txq->tx_db.raw,
    ecore_chain_get_elem_left(&txq->tx_pbl));

   fp->err_tx_cons_idx_conflict++;


   qlnx_trigger_dump(ha);
  }

  idx = (txq->sw_tx_cons + 1) & (TX_RING_SIZE - 1);
  idx2 = (txq->sw_tx_cons + 2) & (TX_RING_SIZE - 1);
  prefetch(txq->sw_tx_ring[idx].mp);
  prefetch(txq->sw_tx_ring[idx2].mp);

  qlnx_free_tx_pkt(ha, fp, txq);

  txq->sw_tx_cons = (txq->sw_tx_cons + 1) & (TX_RING_SIZE - 1);
 }
 return;
}
