
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uintmax_t ;
typedef scalar_t__ u64 ;
struct mlx5_fpga_tools_dev {int fdev; int lock; } ;
typedef enum mlx5_fpga_access_type { ____Placeholder_mlx5_fpga_access_type } mlx5_fpga_access_type ;


 int dev_dbg (int ,char*,size_t,int ,int) ;
 int mlx5_fpga_dev (int ) ;
 int mlx5_fpga_mem_read (int ,size_t,scalar_t__,void*,int) ;
 int sx_xlock_sig (int *) ;
 int sx_xunlock (int *) ;

__attribute__((used)) static int
mem_read(struct mlx5_fpga_tools_dev *tdev, void *buf, size_t count,
    u64 address, enum mlx5_fpga_access_type access_type, size_t *retcnt)
{
 int ret;

 ret = sx_xlock_sig(&tdev->lock);
 if (ret != 0)
  return (ret);
 ret = mlx5_fpga_mem_read(tdev->fdev, count, address, buf, access_type);
 sx_xunlock(&tdev->lock);
 if (ret < 0) {
  dev_dbg(mlx5_fpga_dev(tdev->fdev),
   "Failed to read %zu bytes at address 0x%jx: %d\n",
   count, (uintmax_t)address, ret);
  return (-ret);
 }
 *retcnt = ret;
 return (0);
}
