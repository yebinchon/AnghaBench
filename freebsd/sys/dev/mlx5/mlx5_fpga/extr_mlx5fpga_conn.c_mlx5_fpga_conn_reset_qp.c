
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int qpn; } ;
struct TYPE_4__ {TYPE_3__ mqp; } ;
struct mlx5_fpga_conn {TYPE_1__ qp; TYPE_2__* fdev; } ;
struct mlx5_core_dev {int dummy; } ;
struct TYPE_5__ {struct mlx5_core_dev* mdev; } ;


 int MLX5_CMD_OP_2RST_QP ;
 int mlx5_core_qp_modify (struct mlx5_core_dev*,int ,int ,int *,TYPE_3__*) ;
 int mlx5_fpga_dbg (TYPE_2__*,char*,int ) ;

__attribute__((used)) static inline int mlx5_fpga_conn_reset_qp(struct mlx5_fpga_conn *conn)
{
 struct mlx5_core_dev *mdev = conn->fdev->mdev;

 mlx5_fpga_dbg(conn->fdev, "Modifying QP %u to RST\n", conn->qp.mqp.qpn);

 return mlx5_core_qp_modify(mdev, MLX5_CMD_OP_2RST_QP, 0, ((void*)0),
       &conn->qp.mqp);
}
