
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct xfer_state {int status; struct mlx5_fpga_transaction* xfer; } ;
struct mlx5_fpga_transaction {int (* complete1 ) (struct mlx5_fpga_transaction const*,int ) ;} ;


 int kfree (struct xfer_state*) ;
 int stub1 (struct mlx5_fpga_transaction const*,int ) ;

__attribute__((used)) static void xfer_complete(struct xfer_state *xfer_state)
{
 const struct mlx5_fpga_transaction *xfer = xfer_state->xfer;
 u8 status = xfer_state->status;

 kfree(xfer_state);
 xfer->complete1(xfer, status);
}
