
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_9__ {int cc; } ;
struct TYPE_10__ {TYPE_4__ wq; int mcq; } ;
struct mlx5_fpga_conn {TYPE_5__ cq; TYPE_3__* fdev; } ;
struct TYPE_7__ {TYPE_1__* uar; } ;
struct TYPE_8__ {TYPE_2__ conn_res; } ;
struct TYPE_6__ {int map; } ;


 int MLX5_CQ_DB_REQ_NOT ;
 int mlx5_cq_arm (int *,int ,int ,int ) ;

__attribute__((used)) static void mlx5_fpga_conn_arm_cq(struct mlx5_fpga_conn *conn)
{
 mlx5_cq_arm(&conn->cq.mcq, MLX5_CQ_DB_REQ_NOT,
      conn->fdev->conn_res.uar->map, conn->cq.wq.cc);
}
