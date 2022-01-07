
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ib_srq {int usecnt; } ;
struct ib_rwq_ind_table {int usecnt; } ;
struct ib_qp {TYPE_1__* device; struct ib_rwq_ind_table* rwq_ind_tbl; struct ib_srq* srq; struct ib_cq* recv_cq; struct ib_cq* send_cq; struct ib_pd* pd; struct ib_qp* real_qp; int usecnt; } ;
struct ib_pd {int usecnt; } ;
struct ib_cq {int usecnt; } ;
struct TYPE_2__ {int (* destroy_qp ) (struct ib_qp*) ;} ;


 int EBUSY ;
 int __ib_destroy_shared_qp (struct ib_qp*) ;
 int atomic_dec (int *) ;
 scalar_t__ atomic_read (int *) ;
 int stub1 (struct ib_qp*) ;

int ib_destroy_qp(struct ib_qp *qp)
{
 struct ib_pd *pd;
 struct ib_cq *scq, *rcq;
 struct ib_srq *srq;
 struct ib_rwq_ind_table *ind_tbl;
 int ret;

 if (atomic_read(&qp->usecnt))
  return -EBUSY;

 if (qp->real_qp != qp)
  return __ib_destroy_shared_qp(qp);

 pd = qp->pd;
 scq = qp->send_cq;
 rcq = qp->recv_cq;
 srq = qp->srq;
 ind_tbl = qp->rwq_ind_tbl;

 ret = qp->device->destroy_qp(qp);
 if (!ret) {
  if (pd)
   atomic_dec(&pd->usecnt);
  if (scq)
   atomic_dec(&scq->usecnt);
  if (rcq)
   atomic_dec(&rcq->usecnt);
  if (srq)
   atomic_dec(&srq->usecnt);
  if (ind_tbl)
   atomic_dec(&ind_tbl->usecnt);
 }

 return ret;
}
