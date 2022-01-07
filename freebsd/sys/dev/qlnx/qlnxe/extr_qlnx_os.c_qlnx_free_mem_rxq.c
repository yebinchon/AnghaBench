
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_7__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct sw_rx_data {int dummy; } ;
struct lro_ctrl {int dummy; } ;
struct TYPE_8__ {int * p_virt_table; } ;
struct TYPE_11__ {TYPE_1__ pbl_sp; int * p_virt_addr; } ;
struct qlnx_rx_queue {struct lro_ctrl lro; TYPE_7__ rx_comp_ring; TYPE_7__ rx_bd_ring; int * sw_rx_ring; TYPE_4__* tpa_info; } ;
struct ecore_dev {int dummy; } ;
struct TYPE_9__ {struct ecore_dev cdev; } ;
typedef TYPE_2__ qlnx_host_t ;
struct TYPE_10__ {int * mpf; } ;


 int ETH_TPA_MAX_AGGS_NUM ;
 int RX_RING_SIZE ;
 int bzero (void*,int) ;
 int ecore_chain_free (struct ecore_dev*,TYPE_7__*) ;
 int m_freem (int *) ;
 int qlnx_free_rx_buffers (TYPE_2__*,struct qlnx_rx_queue*) ;
 int qlnx_free_tpa_mbuf (TYPE_2__*,TYPE_4__*) ;
 int tcp_lro_free (struct lro_ctrl*) ;

__attribute__((used)) static void
qlnx_free_mem_rxq(qlnx_host_t *ha, struct qlnx_rx_queue *rxq)
{
 struct ecore_dev *cdev;
 int i;

 cdev = &ha->cdev;

 qlnx_free_rx_buffers(ha, rxq);

 for (i = 0; i < ETH_TPA_MAX_AGGS_NUM; i++) {
  qlnx_free_tpa_mbuf(ha, &rxq->tpa_info[i]);
  if (rxq->tpa_info[i].mpf != ((void*)0))
   m_freem(rxq->tpa_info[i].mpf);
 }

 bzero((void *)&rxq->sw_rx_ring[0],
  (sizeof (struct sw_rx_data) * RX_RING_SIZE));


 if (rxq->rx_bd_ring.p_virt_addr) {
                ecore_chain_free(cdev, &rxq->rx_bd_ring);
                rxq->rx_bd_ring.p_virt_addr = ((void*)0);
        }


        if (rxq->rx_comp_ring.p_virt_addr &&
                        rxq->rx_comp_ring.pbl_sp.p_virt_table) {
                ecore_chain_free(cdev, &rxq->rx_comp_ring);
                rxq->rx_comp_ring.p_virt_addr = ((void*)0);
                rxq->rx_comp_ring.pbl_sp.p_virt_table = ((void*)0);
        }
 return;
}
