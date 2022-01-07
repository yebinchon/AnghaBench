
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct mlx5_core_dev {int dummy; } ;


 int MLX5_GET (int ,void*,int ) ;
 int cmd_status_str (int ) ;
 int cmd_status_to_err_helper (int ) ;
 int mbox_in ;
 int mlx5_cmd_mbox_status (void*,int *,int *) ;
 int mlx5_command_str (int ) ;
 int mlx5_core_err (struct mlx5_core_dev*,char*,int ,int ,int ,int ,int ,int ) ;

__attribute__((used)) static int mlx5_cmd_check(struct mlx5_core_dev *dev, void *in, void *out)
{
 u32 syndrome;
 u8 status;
 u16 opcode;
 u16 op_mod;

 mlx5_cmd_mbox_status(out, &status, &syndrome);
 if (!status)
  return 0;

 opcode = MLX5_GET(mbox_in, in, opcode);
 op_mod = MLX5_GET(mbox_in, in, op_mod);

 mlx5_core_err(dev,
        "%s(0x%x) op_mod(0x%x) failed, status %s(0x%x), syndrome (0x%x)\n",
         mlx5_command_str(opcode),
         opcode, op_mod,
         cmd_status_str(status),
         status,
         syndrome);

 return cmd_status_to_err_helper(status);
}
