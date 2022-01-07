
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u64 ;
typedef void* u32 ;
struct mlx4_mr {int mtt; int key; int enabled; void* access; void* pd; void* size; void* iova; } ;
struct mlx4_dev {int dummy; } ;


 int MLX4_MPT_DISABLED ;
 int hw_index_to_key (void*) ;
 int mlx4_mtt_init (struct mlx4_dev*,int,int,int *) ;

__attribute__((used)) static int mlx4_mr_alloc_reserved(struct mlx4_dev *dev, u32 mridx, u32 pd,
      u64 iova, u64 size, u32 access, int npages,
      int page_shift, struct mlx4_mr *mr)
{
 mr->iova = iova;
 mr->size = size;
 mr->pd = pd;
 mr->access = access;
 mr->enabled = MLX4_MPT_DISABLED;
 mr->key = hw_index_to_key(mridx);

 return mlx4_mtt_init(dev, npages, page_shift, &mr->mtt);
}
