
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int max; int wqe_shift; } ;
struct mlx4_ib_srq {int db; int buf; TYPE_2__ msrq; int wrid; int umem; int mtt; } ;
struct mlx4_ib_dev {int dev; } ;
struct ib_srq {TYPE_1__* uobject; int device; } ;
struct TYPE_3__ {int context; } ;


 int ib_umem_release (int ) ;
 int kfree (struct mlx4_ib_srq*) ;
 int kvfree (int ) ;
 int mlx4_buf_free (int ,int,int *) ;
 int mlx4_db_free (int ,int *) ;
 int mlx4_ib_db_unmap_user (int ,int *) ;
 int mlx4_mtt_cleanup (int ,int *) ;
 int mlx4_srq_free (int ,TYPE_2__*) ;
 struct mlx4_ib_dev* to_mdev (int ) ;
 struct mlx4_ib_srq* to_msrq (struct ib_srq*) ;
 int to_mucontext (int ) ;

int mlx4_ib_destroy_srq(struct ib_srq *srq)
{
 struct mlx4_ib_dev *dev = to_mdev(srq->device);
 struct mlx4_ib_srq *msrq = to_msrq(srq);

 mlx4_srq_free(dev->dev, &msrq->msrq);
 mlx4_mtt_cleanup(dev->dev, &msrq->mtt);

 if (srq->uobject) {
  mlx4_ib_db_unmap_user(to_mucontext(srq->uobject->context), &msrq->db);
  ib_umem_release(msrq->umem);
 } else {
  kvfree(msrq->wrid);
  mlx4_buf_free(dev->dev, msrq->msrq.max << msrq->msrq.wqe_shift,
         &msrq->buf);
  mlx4_db_free(dev->dev, &msrq->db);
 }

 kfree(msrq);

 return 0;
}
