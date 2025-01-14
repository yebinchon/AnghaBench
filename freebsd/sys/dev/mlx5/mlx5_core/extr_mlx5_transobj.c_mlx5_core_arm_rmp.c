
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct mlx5_core_dev {int dummy; } ;


 int ENOMEM ;
 void* MLX5_ADDR_OF (void*,void*,void*) ;
 int MLX5_RMPC_STATE_RDY ;
 int MLX5_SET (void*,void*,int,int) ;
 int MLX5_ST_SZ_BYTES (void*) ;
 void* ctx ;
 int kvfree (void*) ;
 int mlx5_core_modify_rmp (struct mlx5_core_dev*,void*,int ) ;
 void* mlx5_vzalloc (int ) ;
 void* modify_rmp_in ;
 void* rmp_bitmask ;
 int rmp_state ;
 int state ;

int mlx5_core_arm_rmp(struct mlx5_core_dev *dev, u32 rmpn, u16 lwm)
{
 void *in;
 void *rmpc;
 void *wq;
 void *bitmask;
 int err;

 in = mlx5_vzalloc(MLX5_ST_SZ_BYTES(modify_rmp_in));
 if (!in)
  return -ENOMEM;

 rmpc = MLX5_ADDR_OF(modify_rmp_in, in, ctx);
 bitmask = MLX5_ADDR_OF(modify_rmp_in, in, bitmask);
 wq = MLX5_ADDR_OF(rmpc, rmpc, wq);

 MLX5_SET(modify_rmp_in, in, rmp_state, MLX5_RMPC_STATE_RDY);
 MLX5_SET(modify_rmp_in, in, rmpn, rmpn);
 MLX5_SET(wq, wq, lwm, lwm);
 MLX5_SET(rmp_bitmask, bitmask, lwm, 1);
 MLX5_SET(rmpc, rmpc, state, MLX5_RMPC_STATE_RDY);

 err = mlx5_core_modify_rmp(dev, in, MLX5_ST_SZ_BYTES(modify_rmp_in));

 kvfree(in);

 return err;
}
