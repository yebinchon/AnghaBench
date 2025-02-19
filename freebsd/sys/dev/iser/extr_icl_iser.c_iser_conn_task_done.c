
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct iser_tx_desc {int mapped; int dma_addr; } ;
struct iser_device {int ib_device; } ;
struct icl_pdu {int dummy; } ;
struct icl_iser_pdu {int * data; scalar_t__* dir; struct iser_tx_desc desc; TYPE_2__* iser_conn; } ;
struct icl_conn {int dummy; } ;
struct TYPE_3__ {struct iser_device* device; } ;
struct TYPE_4__ {TYPE_1__ ib_conn; } ;


 int DMA_FROM_DEVICE ;
 int DMA_TO_DEVICE ;
 size_t ISER_DIR_IN ;
 size_t ISER_DIR_OUT ;
 int ISER_HEADERS_LEN ;
 int ib_dma_unmap_single (int ,int ,int ,int ) ;
 struct icl_iser_pdu* icl_to_iser_pdu (struct icl_pdu*) ;
 int iser_dma_unmap_task_data (struct icl_iser_pdu*,int *,int ) ;
 int iser_pdu_free (struct icl_conn*,struct icl_pdu*) ;
 int iser_unreg_rdma_mem (struct icl_iser_pdu*,size_t) ;
 scalar_t__ likely (int) ;

void
iser_conn_task_done(struct icl_conn *ic, void *prv)
{
 struct icl_pdu *ip = prv;
 struct icl_iser_pdu *iser_pdu = icl_to_iser_pdu(ip);
 struct iser_device *device = iser_pdu->iser_conn->ib_conn.device;
 struct iser_tx_desc *tx_desc = &iser_pdu->desc;

 if (iser_pdu->dir[ISER_DIR_IN]) {
  iser_unreg_rdma_mem(iser_pdu, ISER_DIR_IN);
  iser_dma_unmap_task_data(iser_pdu,
      &iser_pdu->data[ISER_DIR_IN],
      DMA_FROM_DEVICE);
 }

 if (iser_pdu->dir[ISER_DIR_OUT]) {
  iser_unreg_rdma_mem(iser_pdu, ISER_DIR_OUT);
  iser_dma_unmap_task_data(iser_pdu,
      &iser_pdu->data[ISER_DIR_OUT],
      DMA_TO_DEVICE);
 }

 if (likely(tx_desc->mapped)) {
  ib_dma_unmap_single(device->ib_device, tx_desc->dma_addr,
        ISER_HEADERS_LEN, DMA_TO_DEVICE);
  tx_desc->mapped = 0;
 }

 iser_pdu_free(ic, ip);
}
