
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


struct TYPE_9__ {size_t cons; } ;
struct qlnxr_qp {TYPE_3__ sq; TYPE_5__* wqe_wr_id; } ;
struct TYPE_10__ {int completed; } ;
struct TYPE_12__ {TYPE_4__ info; } ;
struct TYPE_11__ {scalar_t__ opcode; TYPE_2__* frmr; TYPE_6__* mr; } ;
struct TYPE_7__ {int completed; } ;
struct TYPE_8__ {TYPE_1__ info; } ;


 scalar_t__ IB_WC_FAST_REG_MR ;
 scalar_t__ IB_WC_REG_MR ;

__attribute__((used)) static inline void
qlnxr_chk_if_fmr(struct qlnxr_qp *qp)
{





 if (qp->wqe_wr_id[qp->sq.cons].opcode == IB_WC_FAST_REG_MR)
  qp->wqe_wr_id[qp->sq.cons].frmr->info.completed++;


}
