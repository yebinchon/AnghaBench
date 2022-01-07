
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int * vm_ops; } ;



__attribute__((used)) static void mlx5_ib_vma_open(struct vm_area_struct *area)
{
 area->vm_ops = ((void*)0);
}
