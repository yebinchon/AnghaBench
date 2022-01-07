
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct mlx5_core_dev {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 void* MLX5_ADDR_OF (int ,int *,int ) ;
 int MLX5_CMD_OP_MAD_IFC ;
 int MLX5_FLD_SZ_BYTES (int ,int ) ;
 int MLX5_SET (int ,int *,int ,int ) ;
 int MLX5_ST_SZ_BYTES (int ) ;
 int kfree (int *) ;
 int * kzalloc (int,int ) ;
 int mad ;
 int mad_ifc_in ;
 int mad_ifc_out ;
 int memcpy (void*,void*,int ) ;
 int mlx5_cmd_exec (struct mlx5_core_dev*,int *,int,int *,int) ;
 int op_mod ;
 int opcode ;
 int response_mad_packet ;

int mlx5_core_mad_ifc(struct mlx5_core_dev *dev, const void *inb, void *outb,
        u16 opmod, u8 port)
{
 int outlen = MLX5_ST_SZ_BYTES(mad_ifc_out);
 int inlen = MLX5_ST_SZ_BYTES(mad_ifc_in);
 int err = -ENOMEM;
 void *data;
 void *resp;
 u32 *out;
 u32 *in;

 in = kzalloc(inlen, GFP_KERNEL);
 out = kzalloc(outlen, GFP_KERNEL);
 if (!in || !out)
  goto out;

 MLX5_SET(mad_ifc_in, in, opcode, MLX5_CMD_OP_MAD_IFC);
 MLX5_SET(mad_ifc_in, in, op_mod, opmod);
 MLX5_SET(mad_ifc_in, in, port, port);

 data = MLX5_ADDR_OF(mad_ifc_in, in, mad);
 memcpy(data, inb, MLX5_FLD_SZ_BYTES(mad_ifc_in, mad));

 err = mlx5_cmd_exec(dev, in, inlen, out, outlen);
 if (err)
  goto out;

 resp = MLX5_ADDR_OF(mad_ifc_out, out, response_mad_packet);
 memcpy(outb, resp,
        MLX5_FLD_SZ_BYTES(mad_ifc_out, response_mad_packet));

out:
 kfree(out);
 kfree(in);
 return err;
}
