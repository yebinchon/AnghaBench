
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef union eth_tx_bd_types {int dummy; } eth_tx_bd_types ;
struct sw_tx_bd {int dummy; } ;
struct qlnx_tx_queue {int num_tx_buffers; int tx_pbl; int * sw_tx_ring; } ;
struct qlnx_fastpath {int dummy; } ;
struct ecore_dev {int dummy; } ;
struct TYPE_4__ {struct ecore_dev cdev; } ;
typedef TYPE_1__ qlnx_host_t ;


 int ECORE_CHAIN_CNT_TYPE_U16 ;
 int ECORE_CHAIN_MODE_PBL ;
 int ECORE_CHAIN_USE_TO_CONSUME_PRODUCE ;
 int ECORE_SUCCESS ;
 int ENOMEM ;
 int TX_RING_SIZE ;
 int bzero (void*,int) ;
 int ecore_chain_alloc (struct ecore_dev*,int ,int ,int ,int,int,int *,int *) ;
 int qlnx_free_mem_txq (TYPE_1__*,struct qlnx_fastpath*,struct qlnx_tx_queue*) ;

__attribute__((used)) static int
qlnx_alloc_mem_txq(qlnx_host_t *ha, struct qlnx_fastpath *fp,
 struct qlnx_tx_queue *txq)
{
        int ret = ECORE_SUCCESS;
        union eth_tx_bd_types *p_virt;
 struct ecore_dev *cdev;

 cdev = &ha->cdev;

 bzero((void *)&txq->sw_tx_ring[0],
  (sizeof (struct sw_tx_bd) * TX_RING_SIZE));


        ret = ecore_chain_alloc(cdev,
                        ECORE_CHAIN_USE_TO_CONSUME_PRODUCE,
                        ECORE_CHAIN_MODE_PBL,
   ECORE_CHAIN_CNT_TYPE_U16,
                        TX_RING_SIZE,
                        sizeof(*p_virt),
                        &txq->tx_pbl, ((void*)0));

        if (ret != ECORE_SUCCESS) {
                goto err;
        }

 txq->num_tx_buffers = TX_RING_SIZE;

        return 0;

err:
        qlnx_free_mem_txq(ha, fp, txq);
        return -ENOMEM;
}
