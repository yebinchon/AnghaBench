
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlx5e_sq {int sqn; TYPE_1__* priv; } ;
struct TYPE_2__ {int mdev; } ;


 int ENOMEM ;
 void* MLX5_ADDR_OF (void*,void*,int ) ;
 int MLX5_SET (void*,void*,int ,int) ;
 int MLX5_ST_SZ_BYTES (void*) ;
 int ctx ;
 int kvfree (void*) ;
 int mlx5_core_modify_sq (int ,void*,int) ;
 void* mlx5_vzalloc (int) ;
 void* modify_sq_in ;
 int sq_state ;
 int sqn ;
 int state ;

int
mlx5e_modify_sq(struct mlx5e_sq *sq, int curr_state, int next_state)
{
 void *in;
 void *sqc;
 int inlen;
 int err;

 inlen = MLX5_ST_SZ_BYTES(modify_sq_in);
 in = mlx5_vzalloc(inlen);
 if (in == ((void*)0))
  return (-ENOMEM);

 sqc = MLX5_ADDR_OF(modify_sq_in, in, ctx);

 MLX5_SET(modify_sq_in, in, sqn, sq->sqn);
 MLX5_SET(modify_sq_in, in, sq_state, curr_state);
 MLX5_SET(sqc, sqc, state, next_state);

 err = mlx5_core_modify_sq(sq->priv->mdev, in, inlen);

 kvfree(in);

 return (err);
}
