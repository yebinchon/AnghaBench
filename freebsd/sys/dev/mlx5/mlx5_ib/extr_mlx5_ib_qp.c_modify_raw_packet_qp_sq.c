
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int qpn; } ;
struct TYPE_4__ {TYPE_1__ mqp; } ;
struct mlx5_ib_sq {int state; TYPE_2__ base; } ;
struct mlx5_core_dev {int dummy; } ;


 int ENOMEM ;
 void* MLX5_ADDR_OF (void*,void*,int ) ;
 int MLX5_SET (void*,void*,int ,int) ;
 int MLX5_ST_SZ_BYTES (void*) ;
 int ctx ;
 int kvfree (void*) ;
 int mlx5_core_modify_sq (struct mlx5_core_dev*,void*,int) ;
 void* mlx5_vzalloc (int) ;
 void* modify_sq_in ;
 int sq_state ;
 int sqn ;
 int state ;

__attribute__((used)) static int modify_raw_packet_qp_sq(struct mlx5_core_dev *dev,
       struct mlx5_ib_sq *sq, int new_state)
{
 void *in;
 void *sqc;
 int inlen;
 int err;

 inlen = MLX5_ST_SZ_BYTES(modify_sq_in);
 in = mlx5_vzalloc(inlen);
 if (!in)
  return -ENOMEM;

 MLX5_SET(modify_sq_in, in, sqn, sq->base.mqp.qpn);
 MLX5_SET(modify_sq_in, in, sq_state, sq->state);

 sqc = MLX5_ADDR_OF(modify_sq_in, in, ctx);
 MLX5_SET(sqc, sqc, state, new_state);

 err = mlx5_core_modify_sq(dev, in, inlen);
 if (err)
  goto out;

 sq->state = new_state;

out:
 kvfree(in);
 return err;
}
