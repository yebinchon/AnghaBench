
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u64 ;
struct mlx4_tunnel_mad {int dummy; } ;
struct mlx4_mad_rcv_buf {int dummy; } ;
struct mlx4_ib_demux_pv_qp {TYPE_3__* qp; TYPE_2__* ring; int proxy_qpt; } ;
struct mlx4_ib_demux_pv_ctx {int ib_dev; TYPE_1__* pd; } ;
struct ib_sge {int length; int lkey; int addr; } ;
struct ib_recv_wr {int num_sge; int wr_id; struct ib_sge* sg_list; int * next; } ;
struct TYPE_6__ {scalar_t__ qp_type; } ;
struct TYPE_5__ {int map; } ;
struct TYPE_4__ {int local_dma_lkey; } ;


 int DMA_FROM_DEVICE ;
 scalar_t__ IB_QPT_UD ;
 int MLX4_TUN_SET_WRID_QPN (int ) ;
 int MLX4_TUN_WRID_RECV ;
 int ib_dma_sync_single_for_device (int ,int ,int,int ) ;
 int ib_post_recv (TYPE_3__*,struct ib_recv_wr*,struct ib_recv_wr**) ;

__attribute__((used)) static int mlx4_ib_post_pv_qp_buf(struct mlx4_ib_demux_pv_ctx *ctx,
      struct mlx4_ib_demux_pv_qp *tun_qp,
      int index)
{
 struct ib_sge sg_list;
 struct ib_recv_wr recv_wr, *bad_recv_wr;
 int size;

 size = (tun_qp->qp->qp_type == IB_QPT_UD) ?
  sizeof (struct mlx4_tunnel_mad) : sizeof (struct mlx4_mad_rcv_buf);

 sg_list.addr = tun_qp->ring[index].map;
 sg_list.length = size;
 sg_list.lkey = ctx->pd->local_dma_lkey;

 recv_wr.next = ((void*)0);
 recv_wr.sg_list = &sg_list;
 recv_wr.num_sge = 1;
 recv_wr.wr_id = (u64) index | MLX4_TUN_WRID_RECV |
  MLX4_TUN_SET_WRID_QPN(tun_qp->proxy_qpt);
 ib_dma_sync_single_for_device(ctx->ib_dev, tun_qp->ring[index].map,
          size, DMA_FROM_DEVICE);
 return ib_post_recv(tun_qp->qp, &recv_wr, &bad_recv_wr);
}
