
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {int wqe_shift; } ;
struct TYPE_6__ {void* buf; } ;
struct TYPE_7__ {TYPE_1__* page_list; TYPE_2__ direct; } ;
struct mthca_qp {int send_wqe_offset; TYPE_4__ sq; TYPE_3__ queue; scalar_t__ is_direct; } ;
struct TYPE_5__ {void* buf; } ;


 int PAGE_SHIFT ;
 int PAGE_SIZE ;

__attribute__((used)) static void *get_send_wqe(struct mthca_qp *qp, int n)
{
 if (qp->is_direct)
  return qp->queue.direct.buf + qp->send_wqe_offset +
   (n << qp->sq.wqe_shift);
 else
  return qp->queue.page_list[(qp->send_wqe_offset +
         (n << qp->sq.wqe_shift)) >>
        PAGE_SHIFT].buf +
   ((qp->send_wqe_offset + (n << qp->sq.wqe_shift)) &
    (PAGE_SIZE - 1));
}
