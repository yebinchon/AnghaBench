
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int * vm_ops; struct mlx5_ib_vma_private_data* vm_private_data; } ;
struct mlx5_ib_vma_private_data {int list; struct vm_area_struct* vma; } ;
struct list_head {int dummy; } ;
struct mlx5_ib_ucontext {struct list_head vma_private_list; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 struct mlx5_ib_vma_private_data* kzalloc (int,int ) ;
 int list_add (int *,struct list_head*) ;
 int mlx5_ib_vm_ops ;

__attribute__((used)) static int mlx5_ib_set_vma_data(struct vm_area_struct *vma,
    struct mlx5_ib_ucontext *ctx)
{
 struct mlx5_ib_vma_private_data *vma_prv;
 struct list_head *vma_head = &ctx->vma_private_list;

 vma_prv = kzalloc(sizeof(*vma_prv), GFP_KERNEL);
 if (!vma_prv)
  return -ENOMEM;

 vma_prv->vma = vma;
 vma->vm_private_data = vma_prv;
 vma->vm_ops = &mlx5_ib_vm_ops;

 list_add(&vma_prv->list, vma_head);

 return 0;
}
