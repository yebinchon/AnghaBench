
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ib_qp {int srq; } ;


 int ib_drain_rq (struct ib_qp*) ;
 int ib_drain_sq (struct ib_qp*) ;

void ib_drain_qp(struct ib_qp *qp)
{
 ib_drain_sq(qp);
 if (!qp->srq)
  ib_drain_rq(qp);
}
