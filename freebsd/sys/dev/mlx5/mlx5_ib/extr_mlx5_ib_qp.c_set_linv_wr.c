
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlx5_wqe_umr_ctrl_seg {int dummy; } ;
struct mlx5_mkey_seg {int dummy; } ;
struct TYPE_2__ {void* qend; } ;
struct mlx5_ib_qp {TYPE_1__ sq; } ;


 void* mlx5_get_send_wqe (struct mlx5_ib_qp*,int ) ;
 int set_linv_mkey_seg (void*) ;
 int set_linv_umr_seg (void*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void set_linv_wr(struct mlx5_ib_qp *qp, void **seg, int *size)
{
 set_linv_umr_seg(*seg);
 *seg += sizeof(struct mlx5_wqe_umr_ctrl_seg);
 *size += sizeof(struct mlx5_wqe_umr_ctrl_seg) / 16;
 if (unlikely((*seg == qp->sq.qend)))
  *seg = mlx5_get_send_wqe(qp, 0);
 set_linv_mkey_seg(*seg);
 *seg += sizeof(struct mlx5_mkey_seg);
 *size += sizeof(struct mlx5_mkey_seg) / 16;
 if (unlikely((*seg == qp->sq.qend)))
  *seg = mlx5_get_send_wqe(qp, 0);
}
