
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_tool_addr {int dummy; } ;


 int MLX5_FWDUMP_FORCE ;
 int ioctl (int,int ,struct mlx5_tool_addr const*) ;
 int warn (char*) ;

__attribute__((used)) static int
mlx5tool_dump_force(int ctldev, const struct mlx5_tool_addr *addr)
{

 if (ioctl(ctldev, MLX5_FWDUMP_FORCE, addr) == -1) {
  warn("MLX5_FWDUMP_FORCE");
  return (1);
 }
 return (0);
}
