
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct mlx5_core_dev {int dummy; } ;
typedef int out ;
typedef int in ;


 int MLX5_GET (int ,int *,int *) ;
 int MLX5_REG_MCQI ;
 int MLX5_SET (int ,int *,int ,int ) ;
 int MLX5_ST_SZ_BYTES (int ) ;
 int MLX5_ST_SZ_DW (int ) ;
 int data_size ;
 int mcqi_cap ;
 int mcqi_reg ;
 int memset (int *,int ,int) ;
 int mlx5_core_access_reg (struct mlx5_core_dev*,int *,int,int *,int,int ,int ,int ) ;

__attribute__((used)) static int mlx5_reg_mcqi_query(struct mlx5_core_dev *dev,
          u16 component_index,
          u32 *max_component_size,
          u8 *log_mcda_word_size,
          u16 *mcda_max_write_size)
{
 u32 out[MLX5_ST_SZ_DW(mcqi_reg) + MLX5_ST_SZ_DW(mcqi_cap)];
 int offset = MLX5_ST_SZ_DW(mcqi_reg);
 u32 in[MLX5_ST_SZ_DW(mcqi_reg)];
 int err;

 memset(in, 0, sizeof(in));
 memset(out, 0, sizeof(out));

 MLX5_SET(mcqi_reg, in, component_index, component_index);
 MLX5_SET(mcqi_reg, in, data_size, MLX5_ST_SZ_BYTES(mcqi_cap));

 err = mlx5_core_access_reg(dev, in, sizeof(in), out,
       sizeof(out), MLX5_REG_MCQI, 0, 0);
 if (err)
  goto out;

 *max_component_size = MLX5_GET(mcqi_cap, out + offset, max_component_size);
 *log_mcda_word_size = MLX5_GET(mcqi_cap, out + offset, log_mcda_word_size);
 *mcda_max_write_size = MLX5_GET(mcqi_cap, out + offset, mcda_max_write_size);

out:
 return err;
}
