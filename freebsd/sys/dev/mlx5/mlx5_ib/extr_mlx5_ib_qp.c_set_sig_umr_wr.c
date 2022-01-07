
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int u32 ;
struct mlx5_wqe_umr_ctrl_seg {int dummy; } ;
struct mlx5_mkey_seg {int dummy; } ;
struct TYPE_10__ {void* qend; } ;
struct mlx5_ib_qp {TYPE_4__ sq; int signature_en; } ;
struct mlx5_ib_mr {TYPE_5__* sig; } ;
struct TYPE_8__ {int num_sge; TYPE_1__* sg_list; } ;
struct ib_sig_handover_wr {int access_flags; TYPE_3__* prot; TYPE_2__ wr; int sig_mr; } ;
struct ib_send_wr {int dummy; } ;
struct TYPE_12__ {int pdn; } ;
struct TYPE_11__ {int sig_status_checked; } ;
struct TYPE_9__ {scalar_t__ lkey; scalar_t__ addr; int length; } ;
struct TYPE_7__ {int length; scalar_t__ lkey; scalar_t__ addr; } ;


 int EINVAL ;
 int IB_ACCESS_REMOTE_ATOMIC ;
 TYPE_6__* get_pd (struct mlx5_ib_qp*) ;
 void* mlx5_get_send_wqe (struct mlx5_ib_qp*,int ) ;
 int set_sig_data_segment (struct ib_sig_handover_wr*,struct mlx5_ib_qp*,void**,int*) ;
 int set_sig_mkey_segment (void*,struct ib_sig_handover_wr*,int,int,int) ;
 int set_sig_umr_segment (void*,int) ;
 struct ib_sig_handover_wr* sig_handover_wr (struct ib_send_wr*) ;
 struct mlx5_ib_mr* to_mmr (int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int set_sig_umr_wr(struct ib_send_wr *send_wr, struct mlx5_ib_qp *qp,
     void **seg, int *size)
{
 struct ib_sig_handover_wr *wr = sig_handover_wr(send_wr);
 struct mlx5_ib_mr *sig_mr = to_mmr(wr->sig_mr);
 u32 pdn = get_pd(qp)->pdn;
 u32 klm_oct_size;
 int region_len, ret;

 if (unlikely(wr->wr.num_sge != 1) ||
     unlikely(wr->access_flags & IB_ACCESS_REMOTE_ATOMIC) ||
     unlikely(!sig_mr->sig) || unlikely(!qp->signature_en) ||
     unlikely(!sig_mr->sig->sig_status_checked))
  return -EINVAL;


 region_len = wr->wr.sg_list->length;
 if (wr->prot &&
     (wr->prot->lkey != wr->wr.sg_list->lkey ||
      wr->prot->addr != wr->wr.sg_list->addr ||
      wr->prot->length != wr->wr.sg_list->length))
  region_len += wr->prot->length;






 klm_oct_size = wr->prot ? 3 : 1;

 set_sig_umr_segment(*seg, klm_oct_size);
 *seg += sizeof(struct mlx5_wqe_umr_ctrl_seg);
 *size += sizeof(struct mlx5_wqe_umr_ctrl_seg) / 16;
 if (unlikely((*seg == qp->sq.qend)))
  *seg = mlx5_get_send_wqe(qp, 0);

 set_sig_mkey_segment(*seg, wr, klm_oct_size, region_len, pdn);
 *seg += sizeof(struct mlx5_mkey_seg);
 *size += sizeof(struct mlx5_mkey_seg) / 16;
 if (unlikely((*seg == qp->sq.qend)))
  *seg = mlx5_get_send_wqe(qp, 0);

 ret = set_sig_data_segment(wr, qp, seg, size);
 if (ret)
  return ret;

 sig_mr->sig->sig_status_checked = 0;
 return 0;
}
