
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct mlx5_ib_dev {int dummy; } ;
struct ib_umem {int dummy; } ;
struct ib_pd {TYPE_1__* uobject; } ;
struct TYPE_2__ {int context; } ;


 scalar_t__ IS_ERR (struct ib_umem*) ;
 int PTR_ERR (struct ib_umem*) ;
 struct ib_umem* ib_umem_get (int ,unsigned long,size_t,int ,int ) ;
 int ib_umem_release (struct ib_umem*) ;
 int mlx5_ib_cont_pages (struct ib_umem*,unsigned long,int*,int*,int*,int *) ;
 int mlx5_ib_dbg (struct mlx5_ib_dev*,char*,...) ;
 int mlx5_ib_get_buf_offset (unsigned long,int,int *) ;
 int mlx5_ib_warn (struct mlx5_ib_dev*,char*) ;

__attribute__((used)) static int mlx5_ib_umem_get(struct mlx5_ib_dev *dev,
       struct ib_pd *pd,
       unsigned long addr, size_t size,
       struct ib_umem **umem,
       int *npages, int *page_shift, int *ncont,
       u32 *offset)
{
 int err;

 *umem = ib_umem_get(pd->uobject->context, addr, size, 0, 0);
 if (IS_ERR(*umem)) {
  mlx5_ib_dbg(dev, "umem_get failed\n");
  return PTR_ERR(*umem);
 }

 mlx5_ib_cont_pages(*umem, addr, npages, page_shift, ncont, ((void*)0));

 err = mlx5_ib_get_buf_offset(addr, *page_shift, offset);
 if (err) {
  mlx5_ib_warn(dev, "bad offset\n");
  goto err_umem;
 }

 mlx5_ib_dbg(dev, "addr 0x%lx, size %zu, npages %d, page_shift %d, ncont %d, offset %d\n",
      addr, size, *npages, *page_shift, *ncont, *offset);

 return 0;

err_umem:
 ib_umem_release(*umem);
 *umem = ((void*)0);

 return err;
}
