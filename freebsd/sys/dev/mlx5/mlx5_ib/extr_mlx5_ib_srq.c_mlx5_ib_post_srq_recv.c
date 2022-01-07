
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct mlx5_wqe_srq_next_seg {int next_wqe_index; } ;
struct mlx5_wqe_data_seg {scalar_t__ addr; void* lkey; void* byte_count; } ;
struct TYPE_6__ {void** db; } ;
struct TYPE_5__ {int max_gs; int max_avail_gather; } ;
struct mlx5_ib_srq {size_t head; size_t tail; int wqe_ctr; int lock; TYPE_3__ db; TYPE_2__ msrq; int * wrid; } ;
struct mlx5_ib_dev {struct mlx5_core_dev* mdev; } ;
struct mlx5_core_dev {scalar_t__ state; } ;
struct ib_srq {int device; } ;
struct ib_recv_wr {int num_sge; TYPE_1__* sg_list; int wr_id; struct ib_recv_wr* next; } ;
struct TYPE_4__ {int length; int lkey; int addr; } ;


 int EINVAL ;
 int EIO ;
 int ENOMEM ;
 scalar_t__ MLX5_DEVICE_STATE_INTERNAL_ERROR ;
 int MLX5_INVALID_LKEY ;
 size_t be16_to_cpu (int ) ;
 void* cpu_to_be32 (int) ;
 scalar_t__ cpu_to_be64 (int ) ;
 struct mlx5_wqe_srq_next_seg* get_wqe (struct mlx5_ib_srq*,size_t) ;
 scalar_t__ likely (int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct mlx5_ib_dev* to_mdev (int ) ;
 struct mlx5_ib_srq* to_msrq (struct ib_srq*) ;
 scalar_t__ unlikely (int) ;
 int wmb () ;

int mlx5_ib_post_srq_recv(struct ib_srq *ibsrq, struct ib_recv_wr *wr,
     struct ib_recv_wr **bad_wr)
{
 struct mlx5_ib_srq *srq = to_msrq(ibsrq);
 struct mlx5_wqe_srq_next_seg *next;
 struct mlx5_wqe_data_seg *scat;
 struct mlx5_ib_dev *dev = to_mdev(ibsrq->device);
 struct mlx5_core_dev *mdev = dev->mdev;
 unsigned long flags;
 int err = 0;
 int nreq;
 int i;

 spin_lock_irqsave(&srq->lock, flags);

 if (mdev->state == MLX5_DEVICE_STATE_INTERNAL_ERROR) {
  err = -EIO;
  *bad_wr = wr;
  goto out;
 }

 for (nreq = 0; wr; nreq++, wr = wr->next) {
  if (unlikely(wr->num_sge > srq->msrq.max_gs)) {
   err = -EINVAL;
   *bad_wr = wr;
   break;
  }

  if (unlikely(srq->head == srq->tail)) {
   err = -ENOMEM;
   *bad_wr = wr;
   break;
  }

  srq->wrid[srq->head] = wr->wr_id;

  next = get_wqe(srq, srq->head);
  srq->head = be16_to_cpu(next->next_wqe_index);
  scat = (struct mlx5_wqe_data_seg *)(next + 1);

  for (i = 0; i < wr->num_sge; i++) {
   scat[i].byte_count = cpu_to_be32(wr->sg_list[i].length);
   scat[i].lkey = cpu_to_be32(wr->sg_list[i].lkey);
   scat[i].addr = cpu_to_be64(wr->sg_list[i].addr);
  }

  if (i < srq->msrq.max_avail_gather) {
   scat[i].byte_count = 0;
   scat[i].lkey = cpu_to_be32(MLX5_INVALID_LKEY);
   scat[i].addr = 0;
  }
 }

 if (likely(nreq)) {
  srq->wqe_ctr += nreq;




  wmb();

  *srq->db.db = cpu_to_be32(srq->wqe_ctr);
 }
out:
 spin_unlock_irqrestore(&srq->lock, flags);

 return err;
}
