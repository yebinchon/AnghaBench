
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct mlx5_wqe_umr_ctrl_seg {int dummy; } ;
struct mlx5_wqe_data_seg {int dummy; } ;
struct mlx5_mkey_seg {int dummy; } ;
struct TYPE_6__ {void* qend; } ;
struct TYPE_5__ {int device; int pd; } ;
struct mlx5_ib_qp {TYPE_3__ sq; TYPE_2__ ibqp; } ;
struct mlx5_ib_pd {int dummy; } ;
struct mlx5_ib_mr {int dummy; } ;
struct TYPE_4__ {int send_flags; } ;
struct ib_reg_wr {int access; int key; TYPE_1__ wr; int mr; } ;


 int EINVAL ;
 int IB_SEND_INLINE ;
 void* mlx5_get_send_wqe (struct mlx5_ib_qp*,int ) ;
 int mlx5_ib_warn (int ,char*) ;
 int set_reg_data_seg (void*,struct mlx5_ib_mr*,struct mlx5_ib_pd*) ;
 int set_reg_mkey_seg (void*,struct mlx5_ib_mr*,int ,int ) ;
 int set_reg_umr_seg (void*,struct mlx5_ib_mr*) ;
 int to_mdev (int ) ;
 struct mlx5_ib_mr* to_mmr (int ) ;
 struct mlx5_ib_pd* to_mpd (int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int set_reg_wr(struct mlx5_ib_qp *qp,
        struct ib_reg_wr *wr,
        void **seg, int *size)
{
 struct mlx5_ib_mr *mr = to_mmr(wr->mr);
 struct mlx5_ib_pd *pd = to_mpd(qp->ibqp.pd);

 if (unlikely(wr->wr.send_flags & IB_SEND_INLINE)) {
  mlx5_ib_warn(to_mdev(qp->ibqp.device),
        "Invalid IB_SEND_INLINE send flag\n");
  return -EINVAL;
 }

 set_reg_umr_seg(*seg, mr);
 *seg += sizeof(struct mlx5_wqe_umr_ctrl_seg);
 *size += sizeof(struct mlx5_wqe_umr_ctrl_seg) / 16;
 if (unlikely((*seg == qp->sq.qend)))
  *seg = mlx5_get_send_wqe(qp, 0);

 set_reg_mkey_seg(*seg, mr, wr->key, wr->access);
 *seg += sizeof(struct mlx5_mkey_seg);
 *size += sizeof(struct mlx5_mkey_seg) / 16;
 if (unlikely((*seg == qp->sq.qend)))
  *seg = mlx5_get_send_wqe(qp, 0);

 set_reg_data_seg(*seg, mr, pd);
 *seg += sizeof(struct mlx5_wqe_data_seg);
 *size += (sizeof(struct mlx5_wqe_data_seg) / 16);

 return 0;
}
