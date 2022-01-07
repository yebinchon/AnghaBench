
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef union eth_rx_cqe {int dummy; } eth_rx_cqe ;
struct sw_rx_data {int dummy; } ;
struct lro_ctrl {struct ifnet* ifp; } ;
struct qlnx_rx_queue {int num_rx_buffers; int rxq_id; struct lro_ctrl lro; int * tpa_info; int rx_buf_size; int rx_comp_ring; int rx_bd_ring; int * sw_rx_ring; } ;
struct ifnet {int dummy; } ;
struct eth_rx_bd {int dummy; } ;
struct ecore_dev {int dummy; } ;
struct TYPE_7__ {struct ifnet* ifp; int rx_buf_size; struct ecore_dev cdev; } ;
typedef TYPE_1__ qlnx_host_t ;


 int ECORE_CHAIN_CNT_TYPE_U16 ;
 int ECORE_CHAIN_MODE_NEXT_PTR ;
 int ECORE_CHAIN_MODE_PBL ;
 int ECORE_CHAIN_USE_TO_CONSUME ;
 int ECORE_CHAIN_USE_TO_CONSUME_PRODUCE ;
 int ENOMEM ;
 int ETH_TPA_MAX_AGGS_NUM ;
 int QL_DPRINT1 (TYPE_1__*,char*,...) ;
 int RX_RING_SIZE ;
 int bzero (void*,int) ;
 int ecore_chain_alloc (struct ecore_dev*,int ,int ,int ,int,int,int *,int *) ;
 int qlnx_alloc_rx_buffer (TYPE_1__*,struct qlnx_rx_queue*) ;
 int qlnx_alloc_tpa_mbuf (TYPE_1__*,int ,int *) ;
 int qlnx_free_mem_rxq (TYPE_1__*,struct qlnx_rx_queue*) ;
 scalar_t__ tcp_lro_init (struct lro_ctrl*) ;
 scalar_t__ tcp_lro_init_args (struct lro_ctrl*,struct ifnet*,int ,int) ;

__attribute__((used)) static int
qlnx_alloc_mem_rxq(qlnx_host_t *ha, struct qlnx_rx_queue *rxq)
{
        int i, rc, num_allocated;
 struct ifnet *ifp;
 struct ecore_dev *cdev;

 cdev = &ha->cdev;
 ifp = ha->ifp;

        rxq->num_rx_buffers = RX_RING_SIZE;

 rxq->rx_buf_size = ha->rx_buf_size;


 bzero((void *)&rxq->sw_rx_ring[0],
  (sizeof (struct sw_rx_data) * RX_RING_SIZE));



        rc = ecore_chain_alloc(cdev,
   ECORE_CHAIN_USE_TO_CONSUME_PRODUCE,
   ECORE_CHAIN_MODE_NEXT_PTR,
   ECORE_CHAIN_CNT_TYPE_U16,
   RX_RING_SIZE,
   sizeof(struct eth_rx_bd),
   &rxq->rx_bd_ring, ((void*)0));

        if (rc)
                goto err;


        rc = ecore_chain_alloc(cdev,
                        ECORE_CHAIN_USE_TO_CONSUME,
                        ECORE_CHAIN_MODE_PBL,
   ECORE_CHAIN_CNT_TYPE_U16,
                        RX_RING_SIZE,
                        sizeof(union eth_rx_cqe),
                        &rxq->rx_comp_ring, ((void*)0));

        if (rc)
                goto err;



 for (i = 0; i < ETH_TPA_MAX_AGGS_NUM; i++) {
  rc = qlnx_alloc_tpa_mbuf(ha, rxq->rx_buf_size,
   &rxq->tpa_info[i]);
                if (rc)
                        break;

 }

        for (i = 0; i < rxq->num_rx_buffers; i++) {
                rc = qlnx_alloc_rx_buffer(ha, rxq);
                if (rc)
                        break;
        }
        num_allocated = i;
        if (!num_allocated) {
  QL_DPRINT1(ha, "Rx buffers allocation failed\n");
                goto err;
        } else if (num_allocated < rxq->num_rx_buffers) {
  QL_DPRINT1(ha, "Allocated less buffers than"
   " desired (%d allocated)\n", num_allocated);
        }
        return 0;

err:
        qlnx_free_mem_rxq(ha, rxq);
        return -ENOMEM;
}
