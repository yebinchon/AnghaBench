
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct mlx5_core_dev {int dummy; } ;


 int ENOMEM ;
 int MLX5_INFINIBAND_PORT_COUNTERS_GROUP ;
 int MLX5_REG_PPCNT ;
 int MLX5_SET (int ,int *,int ,int ) ;
 int grp ;
 int kvfree (int *) ;
 int local_port ;
 int mlx5_core_access_reg (struct mlx5_core_dev*,int *,size_t,void*,size_t,int ,int ,int ) ;
 int * mlx5_vzalloc (size_t) ;
 int ppcnt_reg ;

int mlx5_core_query_ib_ppcnt(struct mlx5_core_dev *dev,
        u8 port_num, void *out, size_t sz)
{
 u32 *in;
 int err;

 in = mlx5_vzalloc(sz);
 if (!in) {
  err = -ENOMEM;
  return err;
 }

 MLX5_SET(ppcnt_reg, in, local_port, port_num);

 MLX5_SET(ppcnt_reg, in, grp, MLX5_INFINIBAND_PORT_COUNTERS_GROUP);
 err = mlx5_core_access_reg(dev, in, sz, out,
       sz, MLX5_REG_PPCNT, 0, 0);

 kvfree(in);
 return err;
}
