
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef size_t u16 ;
struct TYPE_11__ {int raw; } ;
struct qlnx_tx_queue {size_t sw_tx_cons; TYPE_4__* sw_tx_ring; int tx_pbl; TYPE_1__ tx_db; int * hw_cons_ptr; } ;
struct qlnx_fastpath {int tx_pkts_completed; int tx_pkts_freed; int err_tx_free_pkt_null; int rss_id; } ;
struct TYPE_12__ {int len; } ;
struct mbuf {TYPE_2__ m_pkthdr; } ;
struct eth_tx_bd {int dummy; } ;
struct TYPE_13__ {int nbds; } ;
struct eth_tx_1st_bd {TYPE_3__ data; } ;
struct TYPE_15__ {int tx_tag; int ifp; } ;
typedef TYPE_5__ qlnx_host_t ;
typedef scalar_t__ bus_dmamap_t ;
struct TYPE_14__ {scalar_t__ map; struct mbuf* mp; scalar_t__ flags; } ;


 int BUS_DMASYNC_POSTWRITE ;
 int QLNX_INC_OBYTES (int ,int ) ;
 int QLNX_INC_OPACKETS (int ) ;
 int QL_DPRINT1 (TYPE_5__*,char*,int ,int ,int ,int ,int ,int ) ;
 int QL_ERR_INJCT_TX_INT_MBUF_NULL ;
 scalar_t__ QL_ERR_INJECT (TYPE_5__*,int ) ;
 int QL_RESET_ERR_INJECT (TYPE_5__*,int ) ;
 int bus_dmamap_sync (int ,scalar_t__,int ) ;
 int bus_dmamap_unload (int ,scalar_t__) ;
 struct eth_tx_bd* ecore_chain_consume (int *) ;
 int ecore_chain_get_cons_idx (int *) ;
 int ecore_chain_get_elem_left (int *) ;
 int ecore_chain_get_prod_idx (int *) ;
 int le16toh (int ) ;
 int m_freem (struct mbuf*) ;
 int qlnx_trigger_dump (TYPE_5__*) ;

__attribute__((used)) static void
qlnx_free_tx_pkt(qlnx_host_t *ha, struct qlnx_fastpath *fp,
 struct qlnx_tx_queue *txq)
{
 u16 idx;
 struct mbuf *mp;
 bus_dmamap_t map;
 int i;
 struct eth_tx_bd *tx_data_bd;
 struct eth_tx_1st_bd *first_bd;
 int nbds = 0;

 idx = txq->sw_tx_cons;
 mp = txq->sw_tx_ring[idx].mp;
 map = txq->sw_tx_ring[idx].map;

 if ((mp == ((void*)0)) || QL_ERR_INJECT(ha, QL_ERR_INJCT_TX_INT_MBUF_NULL)){

  QL_RESET_ERR_INJECT(ha, QL_ERR_INJCT_TX_INT_MBUF_NULL);

  QL_DPRINT1(ha, "(mp == NULL) "
   " tx_idx = 0x%x"
   " ecore_prod_idx = 0x%x"
   " ecore_cons_idx = 0x%x"
   " hw_bd_cons = 0x%x"
   " txq_db_last = 0x%x"
   " elem_left = 0x%x\n",
   fp->rss_id,
   ecore_chain_get_prod_idx(&txq->tx_pbl),
   ecore_chain_get_cons_idx(&txq->tx_pbl),
   le16toh(*txq->hw_cons_ptr),
   txq->tx_db.raw,
   ecore_chain_get_elem_left(&txq->tx_pbl));

  fp->err_tx_free_pkt_null++;


  qlnx_trigger_dump(ha);

  return;
 } else {

  QLNX_INC_OPACKETS((ha->ifp));
  QLNX_INC_OBYTES((ha->ifp), (mp->m_pkthdr.len));

  bus_dmamap_sync(ha->tx_tag, map, BUS_DMASYNC_POSTWRITE);
  bus_dmamap_unload(ha->tx_tag, map);

  fp->tx_pkts_freed++;
  fp->tx_pkts_completed++;

  m_freem(mp);
 }

 first_bd = (struct eth_tx_1st_bd *)ecore_chain_consume(&txq->tx_pbl);
 nbds = first_bd->data.nbds;



 for (i = 1; i < nbds; i++) {
  tx_data_bd = ecore_chain_consume(&txq->tx_pbl);

 }
 txq->sw_tx_ring[idx].flags = 0;
 txq->sw_tx_ring[idx].mp = ((void*)0);
 txq->sw_tx_ring[idx].map = (bus_dmamap_t)0;

 return;
}
