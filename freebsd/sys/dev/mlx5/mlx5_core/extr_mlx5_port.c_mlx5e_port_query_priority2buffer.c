
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct mlx5_core_dev {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int MLX5_GET (int ,void*,int) ;
 int MLX5_REG_PPTB ;
 int MLX5_SET (int ,void*,int ,int) ;
 int MLX5_ST_SZ_BYTES (int ) ;
 int kfree (void*) ;
 void* kzalloc (int,int ) ;
 int local_port ;
 int mlx5_core_access_reg (struct mlx5_core_dev*,void*,int,void*,int,int ,int ,int ) ;
 int mlx5_core_dbg (struct mlx5_core_dev*,char*,int,int) ;
 int pptb_reg ;

int mlx5e_port_query_priority2buffer(struct mlx5_core_dev *mdev, u8 *buffer)
{
 int sz = MLX5_ST_SZ_BYTES(pptb_reg);
 u32 prio_x_buff;
 void *out;
 void *in;
 int prio;
 int err;

 in = kzalloc(sz, GFP_KERNEL);
 out = kzalloc(sz, GFP_KERNEL);
 if (!in || !out) {
  err = -ENOMEM;
  goto out;
 }

 MLX5_SET(pptb_reg, in, local_port, 1);
 err = mlx5_core_access_reg(mdev, in, sz, out, sz, MLX5_REG_PPTB, 0, 0);
 if (err)
  goto out;

 prio_x_buff = MLX5_GET(pptb_reg, out, prio_x_buff);
 for (prio = 0; prio < 8; prio++) {
  buffer[prio] = (u8)(prio_x_buff >> (4 * prio)) & 0xF;
  mlx5_core_dbg(mdev, "prio %d, buffer %d\n", prio, buffer[prio]);
 }
out:
 kfree(in);
 kfree(out);
 return err;
}
