
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct mlx5_ib_sq {int tisn; } ;
struct mlx5_core_dev {int dummy; } ;
struct TYPE_2__ {int lag_tx_port_affinity; } ;


 int ENOMEM ;
 void* MLX5_ADDR_OF (void*,void*,int ) ;
 int MLX5_SET (void*,void*,int ,int) ;
 int MLX5_ST_SZ_BYTES (void*) ;
 TYPE_1__ bitmask ;
 int ctx ;
 int kvfree (void*) ;
 int lag_tx_port_affinity ;
 int mlx5_core_modify_tis (struct mlx5_core_dev*,int ,void*,int) ;
 void* mlx5_vzalloc (int) ;
 void* modify_tis_in ;

__attribute__((used)) static int modify_raw_packet_tx_affinity(struct mlx5_core_dev *dev,
      struct mlx5_ib_sq *sq, u8 tx_affinity)
{
 void *in;
 void *tisc;
 int inlen;
 int err;

 inlen = MLX5_ST_SZ_BYTES(modify_tis_in);
 in = mlx5_vzalloc(inlen);
 if (!in)
  return -ENOMEM;

 MLX5_SET(modify_tis_in, in, bitmask.lag_tx_port_affinity, 1);

 tisc = MLX5_ADDR_OF(modify_tis_in, in, ctx);
 MLX5_SET(tisc, tisc, lag_tx_port_affinity, tx_affinity);

 err = mlx5_core_modify_tis(dev, sq->tisn, in, inlen);

 kvfree(in);

 return err;
}
