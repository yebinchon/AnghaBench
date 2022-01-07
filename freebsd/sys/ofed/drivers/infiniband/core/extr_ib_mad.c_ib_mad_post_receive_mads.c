
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct ib_sge {int addr; int length; int lkey; } ;
struct ib_recv_wr {int num_sge; TYPE_2__* wr_cqe; struct ib_sge* sg_list; int * next; } ;
struct ib_mad_queue {scalar_t__ count; scalar_t__ max_active; int lock; int list; } ;
struct ib_mad_qp_info {TYPE_5__* port_priv; int qp; struct ib_mad_queue recv_queue; } ;
struct TYPE_10__ {int done; } ;
struct TYPE_11__ {int list; TYPE_2__ cqe; struct ib_mad_queue* mad_queue; } ;
struct TYPE_12__ {int mapping; TYPE_3__ mad_list; } ;
struct ib_mad_private {TYPE_4__ header; int grh; } ;
struct TYPE_14__ {int dev; } ;
struct TYPE_13__ {TYPE_6__* device; TYPE_1__* pd; } ;
struct TYPE_9__ {int local_dma_lkey; } ;


 int DMA_FROM_DEVICE ;
 int ENOMEM ;
 int GFP_ATOMIC ;
 struct ib_mad_private* alloc_mad_private (int ,int ) ;
 int dev_err (int *,char*,...) ;
 int ib_dma_map_single (TYPE_6__*,int *,int ,int ) ;
 int ib_dma_mapping_error (TYPE_6__*,int ) ;
 int ib_dma_unmap_single (TYPE_6__*,int ,int ,int ) ;
 int ib_mad_recv_done ;
 int ib_post_recv (int ,struct ib_recv_wr*,struct ib_recv_wr**) ;
 int kfree (struct ib_mad_private*) ;
 int list_add_tail (int *,int *) ;
 int list_del (int *) ;
 int mad_priv_dma_size (struct ib_mad_private*) ;
 int port_mad_size (TYPE_5__*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static int ib_mad_post_receive_mads(struct ib_mad_qp_info *qp_info,
        struct ib_mad_private *mad)
{
 unsigned long flags;
 int post, ret;
 struct ib_mad_private *mad_priv;
 struct ib_sge sg_list;
 struct ib_recv_wr recv_wr, *bad_recv_wr;
 struct ib_mad_queue *recv_queue = &qp_info->recv_queue;


 sg_list.lkey = qp_info->port_priv->pd->local_dma_lkey;


 recv_wr.next = ((void*)0);
 recv_wr.sg_list = &sg_list;
 recv_wr.num_sge = 1;

 do {

  if (mad) {
   mad_priv = mad;
   mad = ((void*)0);
  } else {
   mad_priv = alloc_mad_private(port_mad_size(qp_info->port_priv),
           GFP_ATOMIC);
   if (!mad_priv) {
    dev_err(&qp_info->port_priv->device->dev,
     "No memory for receive buffer\n");
    ret = -ENOMEM;
    break;
   }
  }
  sg_list.length = mad_priv_dma_size(mad_priv);
  sg_list.addr = ib_dma_map_single(qp_info->port_priv->device,
       &mad_priv->grh,
       mad_priv_dma_size(mad_priv),
       DMA_FROM_DEVICE);
  if (unlikely(ib_dma_mapping_error(qp_info->port_priv->device,
        sg_list.addr))) {
   ret = -ENOMEM;
   break;
  }
  mad_priv->header.mapping = sg_list.addr;
  mad_priv->header.mad_list.mad_queue = recv_queue;
  mad_priv->header.mad_list.cqe.done = ib_mad_recv_done;
  recv_wr.wr_cqe = &mad_priv->header.mad_list.cqe;


  spin_lock_irqsave(&recv_queue->lock, flags);
  post = (++recv_queue->count < recv_queue->max_active);
  list_add_tail(&mad_priv->header.mad_list.list, &recv_queue->list);
  spin_unlock_irqrestore(&recv_queue->lock, flags);
  ret = ib_post_recv(qp_info->qp, &recv_wr, &bad_recv_wr);
  if (ret) {
   spin_lock_irqsave(&recv_queue->lock, flags);
   list_del(&mad_priv->header.mad_list.list);
   recv_queue->count--;
   spin_unlock_irqrestore(&recv_queue->lock, flags);
   ib_dma_unmap_single(qp_info->port_priv->device,
         mad_priv->header.mapping,
         mad_priv_dma_size(mad_priv),
         DMA_FROM_DEVICE);
   kfree(mad_priv);
   dev_err(&qp_info->port_priv->device->dev,
    "ib_post_recv failed: %d\n", ret);
   break;
  }
 } while (post);

 return ret;
}
