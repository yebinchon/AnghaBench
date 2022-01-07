
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct mlx5_ib_dev {int dummy; } ;
typedef void ib_umem ;
struct ib_pd {TYPE_1__* uobject; int device; } ;
struct TYPE_2__ {int context; } ;


 int EINVAL ;
 void* ERR_PTR (int ) ;
 scalar_t__ IS_ERR (void*) ;
 int PTR_ERR (void*) ;
 void* ib_umem_get (int ,int ,int ,int,int ) ;
 int ib_umem_release (void*) ;
 int mlx5_ib_cont_pages (void*,int ,int*,int*,int*,int*) ;
 int mlx5_ib_dbg (struct mlx5_ib_dev*,char*,int,int,int,int) ;
 int mlx5_ib_err (struct mlx5_ib_dev*,char*,int ) ;
 int mlx5_ib_warn (struct mlx5_ib_dev*,char*) ;
 struct mlx5_ib_dev* to_mdev (int ) ;

__attribute__((used)) static struct ib_umem *mr_umem_get(struct ib_pd *pd, u64 start, u64 length,
       int access_flags, int *npages,
       int *page_shift, int *ncont, int *order)
{
 struct mlx5_ib_dev *dev = to_mdev(pd->device);
 struct ib_umem *umem = ib_umem_get(pd->uobject->context, start, length,
        access_flags, 0);
 if (IS_ERR(umem)) {
  mlx5_ib_err(dev, "umem get failed (%ld)\n", PTR_ERR(umem));
  return (void *)umem;
 }

 mlx5_ib_cont_pages(umem, start, npages, page_shift, ncont, order);
 if (!*npages) {
  mlx5_ib_warn(dev, "avoid zero region\n");
  ib_umem_release(umem);
  return ERR_PTR(-EINVAL);
 }

 mlx5_ib_dbg(dev, "npages %d, ncont %d, order %d, page_shift %d\n",
      *npages, *ncont, *order, *page_shift);

 return umem;
}
