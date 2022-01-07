
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_ib_cq {int resize_umem; } ;


 int ib_umem_release (int ) ;

__attribute__((used)) static void un_resize_user(struct mlx5_ib_cq *cq)
{
 ib_umem_release(cq->resize_umem);
}
