
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct sw_tx_bd {int dummy; } ;
struct TYPE_5__ {int * p_virt_addr; } ;
struct qlnx_tx_queue {TYPE_3__ tx_pbl; int * sw_tx_ring; } ;
struct qlnx_fastpath {int dummy; } ;
struct ecore_dev {int dummy; } ;
struct TYPE_4__ {struct ecore_dev cdev; } ;
typedef TYPE_1__ qlnx_host_t ;


 int TX_RING_SIZE ;
 int bzero (void*,int) ;
 int ecore_chain_free (struct ecore_dev*,TYPE_3__*) ;

__attribute__((used)) static void
qlnx_free_mem_txq(qlnx_host_t *ha, struct qlnx_fastpath *fp,
 struct qlnx_tx_queue *txq)
{
 struct ecore_dev *cdev;

 cdev = &ha->cdev;

 bzero((void *)&txq->sw_tx_ring[0],
  (sizeof (struct sw_tx_bd) * TX_RING_SIZE));


        if (txq->tx_pbl.p_virt_addr) {
                ecore_chain_free(cdev, &txq->tx_pbl);
                txq->tx_pbl.p_virt_addr = ((void*)0);
        }
 return;
}
