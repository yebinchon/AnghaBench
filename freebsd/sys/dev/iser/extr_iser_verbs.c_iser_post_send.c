
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iser_tx_desc {int num_sge; int tx_sg; int dma_addr; } ;
struct ib_send_wr {uintptr_t wr_id; int send_flags; int opcode; int num_sge; int sg_list; int * next; } ;
struct ib_conn {int qp; TYPE_1__* device; } ;
struct TYPE_2__ {int ib_device; } ;


 int DMA_TO_DEVICE ;
 int IB_SEND_SIGNALED ;
 int IB_WR_SEND ;
 int ISER_ERR (char*,int) ;
 int ISER_HEADERS_LEN ;
 int ib_dma_sync_single_for_device (int ,int ,int ,int ) ;
 int ib_post_send (int ,struct ib_send_wr*,struct ib_send_wr**) ;

int iser_post_send(struct ib_conn *ib_conn, struct iser_tx_desc *tx_desc,
     bool signal)
{
 int ib_ret;
 struct ib_send_wr send_wr, *send_wr_failed;

 ib_dma_sync_single_for_device(ib_conn->device->ib_device,
          tx_desc->dma_addr, ISER_HEADERS_LEN,
          DMA_TO_DEVICE);

 send_wr.next = ((void*)0);
 send_wr.wr_id = (uintptr_t)tx_desc;
 send_wr.sg_list = tx_desc->tx_sg;
 send_wr.num_sge = tx_desc->num_sge;
 send_wr.opcode = IB_WR_SEND;
 send_wr.send_flags = signal ? IB_SEND_SIGNALED : 0;

 ib_ret = ib_post_send(ib_conn->qp, &send_wr, &send_wr_failed);
 if (ib_ret)
  ISER_ERR("ib_post_send failed, ret:%d", ib_ret);

 return (ib_ret);
}
