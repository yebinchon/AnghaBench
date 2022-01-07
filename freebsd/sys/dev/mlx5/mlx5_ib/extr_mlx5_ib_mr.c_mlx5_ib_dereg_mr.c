
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mlx5_ib_mr {int npages; scalar_t__ live; struct ib_umem* umem; } ;
struct mlx5_ib_dev {TYPE_2__* mdev; int mr_srcu; } ;
struct ib_umem {scalar_t__ odp_data; } ;
struct ib_mr {int device; } ;
struct TYPE_3__ {int reg_pages; } ;
struct TYPE_4__ {TYPE_1__ priv; } ;


 int atomic_sub (int,int *) ;
 int clean_mr (struct mlx5_ib_mr*) ;
 int ib_umem_end (struct ib_umem*) ;
 int ib_umem_release (struct ib_umem*) ;
 int ib_umem_start (struct ib_umem*) ;
 int mlx5_ib_invalidate_range (struct ib_umem*,int ,int ) ;
 int synchronize_srcu (int *) ;
 struct mlx5_ib_dev* to_mdev (int ) ;
 struct mlx5_ib_mr* to_mmr (struct ib_mr*) ;

int mlx5_ib_dereg_mr(struct ib_mr *ibmr)
{
 struct mlx5_ib_dev *dev = to_mdev(ibmr->device);
 struct mlx5_ib_mr *mr = to_mmr(ibmr);
 int npages = mr->npages;
 struct ib_umem *umem = mr->umem;
 clean_mr(mr);

 if (umem) {
  ib_umem_release(umem);
  atomic_sub(npages, &dev->mdev->priv.reg_pages);
 }

 return 0;
}
