
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef void* u64 ;
struct umr_common {int sem; int qp; } ;
struct TYPE_9__ {int * wr_cqe; } ;
struct mlx5_umr_wr {TYPE_4__ wr; } ;
struct mlx5_ib_umr_context {scalar_t__ status; int done; int cqe; } ;
struct TYPE_7__ {int pd; void* size; void* iova; int key; } ;
struct mlx5_ib_mr {int live; TYPE_2__ mmkey; } ;
struct TYPE_6__ {struct device* dma_device; } ;
struct mlx5_ib_dev {struct umr_common umrc; TYPE_1__ ib_dev; } ;
struct ib_umem {int dummy; } ;
struct ib_sge {int dummy; } ;
struct ib_send_wr {int dummy; } ;
struct ib_pd {int device; } ;
struct device {int dummy; } ;
typedef int dma_addr_t ;
typedef int __be64 ;
struct TYPE_8__ {int pdn; } ;


 int DMA_TO_DEVICE ;
 int EAGAIN ;
 int EFAULT ;
 struct mlx5_ib_mr* ERR_PTR (int) ;
 scalar_t__ IB_WC_SUCCESS ;
 int add_keys (struct mlx5_ib_dev*,int ,int) ;
 struct mlx5_ib_mr* alloc_cached_mr (struct mlx5_ib_dev*,int) ;
 int dma_map_mr_pas (struct mlx5_ib_dev*,struct ib_umem*,int,int,int*,int **,int *) ;
 int dma_unmap_single (struct device*,int ,int,int ) ;
 int down (int *) ;
 int free_cached_mr (struct mlx5_ib_dev*,struct mlx5_ib_mr*) ;
 int ib_post_send (int ,TYPE_4__*,struct ib_send_wr**) ;
 int kfree (int *) ;
 int mlx5_ib_init_umr_context (struct mlx5_ib_umr_context*) ;
 int mlx5_ib_warn (struct mlx5_ib_dev*,char*,...) ;
 int order2idx (struct mlx5_ib_dev*,int) ;
 int prep_umr_reg_wqe (struct ib_pd*,TYPE_4__*,struct ib_sge*,int ,int,int ,int,void*,void*,int) ;
 struct mlx5_ib_dev* to_mdev (int ) ;
 TYPE_3__* to_mpd (struct ib_pd*) ;
 int up (int *) ;
 int wait_for_completion (int *) ;

__attribute__((used)) static struct mlx5_ib_mr *reg_umr(struct ib_pd *pd, struct ib_umem *umem,
      u64 virt_addr, u64 len, int npages,
      int page_shift, int order, int access_flags)
{
 struct mlx5_ib_dev *dev = to_mdev(pd->device);
 struct device *ddev = dev->ib_dev.dma_device;
 struct umr_common *umrc = &dev->umrc;
 struct mlx5_ib_umr_context umr_context;
 struct mlx5_umr_wr umrwr = {};
 struct ib_send_wr *bad;
 struct mlx5_ib_mr *mr;
 struct ib_sge sg;
 int size;
 __be64 *mr_pas;
 dma_addr_t dma;
 int err = 0;
 int i;

 for (i = 0; i < 1; i++) {
  mr = alloc_cached_mr(dev, order);
  if (mr)
   break;

  err = add_keys(dev, order2idx(dev, order), 1);
  if (err && err != -EAGAIN) {
   mlx5_ib_warn(dev, "add_keys failed, err %d\n", err);
   break;
  }
 }

 if (!mr)
  return ERR_PTR(-EAGAIN);

 err = dma_map_mr_pas(dev, umem, npages, page_shift, &size, &mr_pas,
        &dma);
 if (err)
  goto free_mr;

 mlx5_ib_init_umr_context(&umr_context);

 umrwr.wr.wr_cqe = &umr_context.cqe;
 prep_umr_reg_wqe(pd, &umrwr.wr, &sg, dma, npages, mr->mmkey.key,
    page_shift, virt_addr, len, access_flags);

 down(&umrc->sem);
 err = ib_post_send(umrc->qp, &umrwr.wr, &bad);
 if (err) {
  mlx5_ib_warn(dev, "post send failed, err %d\n", err);
  goto unmap_dma;
 } else {
  wait_for_completion(&umr_context.done);
  if (umr_context.status != IB_WC_SUCCESS) {
   mlx5_ib_warn(dev, "reg umr failed\n");
   err = -EFAULT;
  }
 }

 mr->mmkey.iova = virt_addr;
 mr->mmkey.size = len;
 mr->mmkey.pd = to_mpd(pd)->pdn;

 mr->live = 1;

unmap_dma:
 up(&umrc->sem);
 dma_unmap_single(ddev, dma, size, DMA_TO_DEVICE);

 kfree(mr_pas);

free_mr:
 if (err) {
  free_cached_mr(dev, mr);
  return ERR_PTR(err);
 }

 return mr;
}
