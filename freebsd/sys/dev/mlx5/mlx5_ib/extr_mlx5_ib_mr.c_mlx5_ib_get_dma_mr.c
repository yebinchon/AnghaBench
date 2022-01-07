
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ib_mr {int rkey; int lkey; } ;
struct TYPE_4__ {int key; } ;
struct mlx5_ib_mr {struct ib_mr ibmr; int * umem; TYPE_2__ mmkey; } ;
typedef struct mlx5_ib_mr u32 ;
struct mlx5_ib_dev {struct mlx5_core_dev* mdev; } ;
struct mlx5_core_dev {int dummy; } ;
struct ib_pd {int device; } ;
struct TYPE_3__ {int pdn; } ;


 int ENOMEM ;
 struct ib_mr* ERR_PTR (int) ;
 int GFP_KERNEL ;
 int IB_ACCESS_LOCAL_WRITE ;
 int IB_ACCESS_REMOTE_ATOMIC ;
 int IB_ACCESS_REMOTE_READ ;
 int IB_ACCESS_REMOTE_WRITE ;
 int MLX5_ACCESS_MODE_PA ;
 void* MLX5_ADDR_OF (int ,struct mlx5_ib_mr*,int ) ;
 int MLX5_SET (void*,void*,struct ib_pd*,int) ;
 int MLX5_SET64 (void*,void*,int ,int ) ;
 int MLX5_ST_SZ_BYTES (int ) ;
 struct ib_pd* a ;
 struct ib_pd* access_mode ;
 int create_mkey_in ;
 int kfree (struct mlx5_ib_mr*) ;
 struct mlx5_ib_mr* kzalloc (int,int ) ;
 struct ib_pd* length64 ;
 struct ib_pd* lr ;
 struct ib_pd* lw ;
 int memory_key_mkey_entry ;
 int mlx5_core_create_mkey (struct mlx5_core_dev*,TYPE_2__*,struct mlx5_ib_mr*,int) ;
 struct ib_pd* qpn ;
 struct ib_pd* rr ;
 struct ib_pd* rw ;
 int start_addr ;
 struct mlx5_ib_dev* to_mdev (int ) ;
 TYPE_1__* to_mpd (struct ib_pd*) ;

struct ib_mr *mlx5_ib_get_dma_mr(struct ib_pd *pd, int acc)
{
 struct mlx5_ib_dev *dev = to_mdev(pd->device);
 int inlen = MLX5_ST_SZ_BYTES(create_mkey_in);
 struct mlx5_core_dev *mdev = dev->mdev;
 struct mlx5_ib_mr *mr;
 void *mkc;
 u32 *in;
 int err;

 mr = kzalloc(sizeof(*mr), GFP_KERNEL);
 if (!mr)
  return ERR_PTR(-ENOMEM);

 in = kzalloc(inlen, GFP_KERNEL);
 if (!in) {
  err = -ENOMEM;
  goto err_free;
 }

 mkc = MLX5_ADDR_OF(create_mkey_in, in, memory_key_mkey_entry);

 MLX5_SET(mkc, mkc, access_mode, MLX5_ACCESS_MODE_PA);
 MLX5_SET(mkc, mkc, a, !!(acc & IB_ACCESS_REMOTE_ATOMIC));
 MLX5_SET(mkc, mkc, rw, !!(acc & IB_ACCESS_REMOTE_WRITE));
 MLX5_SET(mkc, mkc, rr, !!(acc & IB_ACCESS_REMOTE_READ));
 MLX5_SET(mkc, mkc, lw, !!(acc & IB_ACCESS_LOCAL_WRITE));
 MLX5_SET(mkc, mkc, lr, 1);

 MLX5_SET(mkc, mkc, length64, 1);
 MLX5_SET(mkc, mkc, pd, to_mpd(pd)->pdn);
 MLX5_SET(mkc, mkc, qpn, 0xffffff);
 MLX5_SET64(mkc, mkc, start_addr, 0);

 err = mlx5_core_create_mkey(mdev, &mr->mmkey, in, inlen);
 if (err)
  goto err_in;

 kfree(in);
 mr->ibmr.lkey = mr->mmkey.key;
 mr->ibmr.rkey = mr->mmkey.key;
 mr->umem = ((void*)0);

 return &mr->ibmr;

err_in:
 kfree(in);

err_free:
 kfree(mr);

 return ERR_PTR(err);
}
