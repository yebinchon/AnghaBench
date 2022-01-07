
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int * vm_ops; struct mlx4_ib_vma_private_data* vm_private_data; } ;
struct mlx4_ib_vma_private_data {struct vm_area_struct* vma; } ;


 int mlx4_ib_vm_ops ;

__attribute__((used)) static void mlx4_ib_set_vma_data(struct vm_area_struct *vma,
     struct mlx4_ib_vma_private_data *vma_private_data)
{
 vma_private_data->vma = vma;
 vma->vm_private_data = vma_private_data;
 vma->vm_ops = &mlx4_ib_vm_ops;
}
