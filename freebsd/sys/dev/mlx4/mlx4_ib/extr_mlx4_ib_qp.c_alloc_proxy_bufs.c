
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int wqe_cnt; } ;
struct mlx4_ib_qp {TYPE_2__* sqp_proxy_rcv; TYPE_1__ rq; } ;
struct mlx4_ib_proxy_sqp_hdr {int dummy; } ;
struct mlx4_ib_buf {int dummy; } ;
struct ib_device {int dummy; } ;
struct TYPE_5__ {struct TYPE_5__* addr; int map; } ;


 int DMA_FROM_DEVICE ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int ib_dma_map_single (struct ib_device*,TYPE_2__*,int,int ) ;
 scalar_t__ ib_dma_mapping_error (struct ib_device*,int ) ;
 int ib_dma_unmap_single (struct ib_device*,int ,int,int ) ;
 int kfree (TYPE_2__*) ;
 void* kmalloc (int,int ) ;

__attribute__((used)) static int alloc_proxy_bufs(struct ib_device *dev, struct mlx4_ib_qp *qp)
{
 int i;

 qp->sqp_proxy_rcv =
  kmalloc(sizeof (struct mlx4_ib_buf) * qp->rq.wqe_cnt,
   GFP_KERNEL);
 if (!qp->sqp_proxy_rcv)
  return -ENOMEM;
 for (i = 0; i < qp->rq.wqe_cnt; i++) {
  qp->sqp_proxy_rcv[i].addr =
   kmalloc(sizeof (struct mlx4_ib_proxy_sqp_hdr),
    GFP_KERNEL);
  if (!qp->sqp_proxy_rcv[i].addr)
   goto err;
  qp->sqp_proxy_rcv[i].map =
   ib_dma_map_single(dev, qp->sqp_proxy_rcv[i].addr,
       sizeof (struct mlx4_ib_proxy_sqp_hdr),
       DMA_FROM_DEVICE);
  if (ib_dma_mapping_error(dev, qp->sqp_proxy_rcv[i].map)) {
   kfree(qp->sqp_proxy_rcv[i].addr);
   goto err;
  }
 }
 return 0;

err:
 while (i > 0) {
  --i;
  ib_dma_unmap_single(dev, qp->sqp_proxy_rcv[i].map,
        sizeof (struct mlx4_ib_proxy_sqp_hdr),
        DMA_FROM_DEVICE);
  kfree(qp->sqp_proxy_rcv[i].addr);
 }
 kfree(qp->sqp_proxy_rcv);
 qp->sqp_proxy_rcv = ((void*)0);
 return -ENOMEM;
}
