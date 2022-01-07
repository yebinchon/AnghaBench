
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_ib_sq {int * doorbell; int * sq; } ;
struct mlx5_ib_rq {int * doorbell; int * rq; } ;
struct mlx5_ib_raw_packet_qp {struct mlx5_ib_rq rq; struct mlx5_ib_sq sq; } ;
struct mlx5_ib_qp {int db; int rq; int sq; } ;



__attribute__((used)) static void raw_packet_qp_copy_info(struct mlx5_ib_qp *qp,
        struct mlx5_ib_raw_packet_qp *raw_packet_qp)
{
 struct mlx5_ib_sq *sq = &raw_packet_qp->sq;
 struct mlx5_ib_rq *rq = &raw_packet_qp->rq;

 sq->sq = &qp->sq;
 rq->rq = &qp->rq;
 sq->doorbell = &qp->db;
 rq->doorbell = &qp->db;
}
