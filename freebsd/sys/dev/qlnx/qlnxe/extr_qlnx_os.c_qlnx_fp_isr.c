
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef scalar_t__ uint16_t ;
struct qlnx_tx_queue {int tx_pbl; } ;
struct qlnx_fastpath {int tx_pkts_completed; int tx_pkts_compl_intr; int rx_pkts; int sb_info; int lro_cnt_64; int lro_cnt_128; int lro_cnt_256; int lro_cnt_512; int lro_cnt_1024; TYPE_2__* rxq; int tx_mtx; int * tx_comInt; struct qlnx_tx_queue** txq; } ;
struct lro_entry {int dummy; } ;
struct lro_ctrl {int lro_mbuf_count; int lro_active; } ;
struct TYPE_10__ {int rss_idx; TYPE_4__* ha; } ;
typedef TYPE_3__ qlnx_ivec_t ;
struct TYPE_11__ {scalar_t__ state; int num_rss; int num_tc; int rx_pkt_threshold; TYPE_1__* ifp; int err_fp_null; struct qlnx_fastpath* fp_array; int err_illegal_intr; } ;
typedef TYPE_4__ qlnx_host_t ;
struct TYPE_9__ {struct lro_ctrl lro; } ;
struct TYPE_8__ {int if_capenable; } ;


 int IFCAP_LRO ;
 int IGU_INT_DISABLE ;
 int IGU_INT_ENABLE ;
 scalar_t__ QLNX_STATE_OPEN ;
 int QLNX_TX_ELEM_THRESH ;
 int QL_DPRINT1 (TYPE_4__*,char*,int) ;
 int SLIST_EMPTY (int *) ;
 struct lro_entry* SLIST_FIRST (int *) ;
 int SLIST_REMOVE_HEAD (int *,int ) ;
 scalar_t__ ecore_chain_get_elem_left (int *) ;
 int ecore_sb_ack (int ,int ,int) ;
 int ecore_sb_update_sb_idx (int ) ;
 scalar_t__ mtx_trylock (int *) ;
 int mtx_unlock (int *) ;
 int next ;
 int qlnx_rx_int (TYPE_4__*,struct qlnx_fastpath*,int ,int) ;
 int qlnx_tx_int (TYPE_4__*,struct qlnx_fastpath*,struct qlnx_tx_queue*) ;
 int rmb () ;
 int tcp_lro_flush (struct lro_ctrl*,struct lro_entry*) ;
 int tcp_lro_flush_all (struct lro_ctrl*) ;
 int tx_compl ;

__attribute__((used)) static void
qlnx_fp_isr(void *arg)
{
        qlnx_ivec_t *ivec = arg;
        qlnx_host_t *ha;
        struct qlnx_fastpath *fp = ((void*)0);
        int idx;

        ha = ivec->ha;

        if (ha->state != QLNX_STATE_OPEN) {
                return;
        }

        idx = ivec->rss_idx;

        if ((idx = ivec->rss_idx) >= ha->num_rss) {
                QL_DPRINT1(ha, "illegal interrupt[%d]\n", idx);
                ha->err_illegal_intr++;
                return;
        }
        fp = &ha->fp_array[idx];

        if (fp == ((void*)0)) {
                ha->err_fp_null++;
        } else {
  int rx_int = 0, total_rx_count = 0;
  int lro_enable, tc;
  struct qlnx_tx_queue *txq;
  uint16_t elem_left;

  lro_enable = ha->ifp->if_capenable & IFCAP_LRO;

                ecore_sb_ack(fp->sb_info, IGU_INT_DISABLE, 0);

                do {
                        for (tc = 0; tc < ha->num_tc; tc++) {

    txq = fp->txq[tc];

    if((int)(elem_left =
     ecore_chain_get_elem_left(&txq->tx_pbl)) <
      QLNX_TX_ELEM_THRESH) {

                                 if (mtx_trylock(&fp->tx_mtx)) {




      qlnx_tx_int(ha, fp, fp->txq[tc]);
      mtx_unlock(&fp->tx_mtx);
     }
    }
                        }

                        rx_int = qlnx_rx_int(ha, fp, ha->rx_pkt_threshold,
                                        lro_enable);

                        if (rx_int) {
                                fp->rx_pkts += rx_int;
                                total_rx_count += rx_int;
                        }

                } while (rx_int);
                ecore_sb_update_sb_idx(fp->sb_info);
                rmb();
                ecore_sb_ack(fp->sb_info, IGU_INT_ENABLE, 1);
        }

        return;
}
