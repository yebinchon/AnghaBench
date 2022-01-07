
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {scalar_t__ vm_private_data; } ;
struct mlx5_ib_vma_private_data {int list; int * vma; } ;


 int kfree (struct mlx5_ib_vma_private_data*) ;
 int list_del (int *) ;

__attribute__((used)) static void mlx5_ib_vma_close(struct vm_area_struct *area)
{
 struct mlx5_ib_vma_private_data *mlx5_ib_vma_priv_data;
 mlx5_ib_vma_priv_data = (struct mlx5_ib_vma_private_data *)area->vm_private_data;





 mlx5_ib_vma_priv_data->vma = ((void*)0);
 list_del(&mlx5_ib_vma_priv_data->list);
 kfree(mlx5_ib_vma_priv_data);
}
