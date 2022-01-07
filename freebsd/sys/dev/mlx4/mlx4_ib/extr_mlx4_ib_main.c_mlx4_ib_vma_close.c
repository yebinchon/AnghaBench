
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {scalar_t__ vm_private_data; } ;
struct mlx4_ib_vma_private_data {int * vma; } ;



__attribute__((used)) static void mlx4_ib_vma_close(struct vm_area_struct *area)
{
 struct mlx4_ib_vma_private_data *mlx4_ib_vma_priv_data;
 mlx4_ib_vma_priv_data = (struct mlx4_ib_vma_private_data *)
    area->vm_private_data;




 mlx4_ib_vma_priv_data->vma = ((void*)0);
}
