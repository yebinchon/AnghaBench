
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int cc; } ;
struct TYPE_5__ {TYPE_2__ wq; int tasklet; } ;
struct mlx5_fpga_conn {TYPE_1__ cq; int fdev; } ;
struct mlx5_cqe64 {int dummy; } ;


 struct mlx5_cqe64* mlx5_cqwq_get_cqe (TYPE_2__*) ;
 int mlx5_cqwq_pop (TYPE_2__*) ;
 int mlx5_cqwq_update_db_record (TYPE_2__*) ;
 int mlx5_fpga_conn_arm_cq (struct mlx5_fpga_conn*) ;
 int mlx5_fpga_conn_handle_cqe (struct mlx5_fpga_conn*,struct mlx5_cqe64*) ;
 int mlx5_fpga_dbg (int ,char*,int ) ;
 int tasklet_schedule (int *) ;
 int wmb () ;

__attribute__((used)) static inline void mlx5_fpga_conn_cqes(struct mlx5_fpga_conn *conn,
           unsigned int budget)
{
 struct mlx5_cqe64 *cqe;

 while (budget) {
  cqe = mlx5_cqwq_get_cqe(&conn->cq.wq);
  if (!cqe)
   break;

  budget--;
  mlx5_cqwq_pop(&conn->cq.wq);
  mlx5_fpga_conn_handle_cqe(conn, cqe);
  mlx5_cqwq_update_db_record(&conn->cq.wq);
 }
 if (!budget) {
  tasklet_schedule(&conn->cq.tasklet);
  return;
 }

 mlx5_fpga_dbg(conn->fdev, "Re-arming CQ with cc# %u\n", conn->cq.wq.cc);

 wmb();
 mlx5_fpga_conn_arm_cq(conn);
}
