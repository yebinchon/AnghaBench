
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_3__ {int qpn; } ;
struct TYPE_4__ {TYPE_1__ mqp; } ;
struct mlx5_ib_sq {int state; TYPE_2__ base; } ;
struct mlx5_ib_dev {int mdev; } ;


 int ENOMEM ;
 void* MLX5_ADDR_OF (int ,void*,int ) ;
 int MLX5_GET (void*,void*,int ) ;
 int MLX5_ST_SZ_BYTES (int ) ;
 int kvfree (void*) ;
 int mlx5_core_query_sq (int ,int ,void*) ;
 void* mlx5_vzalloc (int) ;
 int query_sq_out ;
 int sq_context ;
 int state ;

__attribute__((used)) static int query_raw_packet_qp_sq_state(struct mlx5_ib_dev *dev,
     struct mlx5_ib_sq *sq,
     u8 *sq_state)
{
 void *out;
 void *sqc;
 int inlen;
 int err;

 inlen = MLX5_ST_SZ_BYTES(query_sq_out);
 out = mlx5_vzalloc(inlen);
 if (!out)
  return -ENOMEM;

 err = mlx5_core_query_sq(dev->mdev, sq->base.mqp.qpn, out);
 if (err)
  goto out;

 sqc = MLX5_ADDR_OF(query_sq_out, out, sq_context);
 *sq_state = MLX5_GET(sqc, sqc, state);
 sq->state = *sq_state;

out:
 kvfree(out);
 return err;
}
