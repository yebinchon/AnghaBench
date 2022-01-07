
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct mlx5_fpga_device {scalar_t__ shell_conn; } ;
struct TYPE_2__ {size_t size; int direction; int complete1; scalar_t__ conn; int addr; void* data; } ;
struct mem_transfer {scalar_t__ status; int comp; TYPE_1__ t; } ;
typedef enum mlx5_fpga_direction { ____Placeholder_mlx5_fpga_direction } mlx5_fpga_direction ;


 int EIO ;
 int ENOTCONN ;
 int init_completion (int *) ;
 int mem_complete ;
 int mlx5_fpga_dbg (struct mlx5_fpga_device*,char*,int) ;
 int mlx5_fpga_xfer_exec (TYPE_1__*) ;
 int wait_for_completion (int *) ;

__attribute__((used)) static int mem_transaction(struct mlx5_fpga_device *fdev, size_t size, u64 addr,
      void *buf, enum mlx5_fpga_direction direction)
{
 int ret;
 struct mem_transfer xfer;

 if (!fdev->shell_conn) {
  ret = -ENOTCONN;
  goto out;
 }

 xfer.t.data = buf;
 xfer.t.size = size;
 xfer.t.addr = addr;
 xfer.t.conn = fdev->shell_conn;
 xfer.t.direction = direction;
 xfer.t.complete1 = mem_complete;
 init_completion(&xfer.comp);
 ret = mlx5_fpga_xfer_exec(&xfer.t);
 if (ret) {
  mlx5_fpga_dbg(fdev, "Transfer execution failed: %d\n", ret);
  goto out;
 }
 wait_for_completion(&xfer.comp);
 if (xfer.status != 0)
  ret = -EIO;

out:
 return ret;
}
