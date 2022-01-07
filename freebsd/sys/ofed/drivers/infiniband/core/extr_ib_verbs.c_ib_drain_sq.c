
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ib_qp {TYPE_1__* device; } ;
struct TYPE_2__ {int (* drain_sq ) (struct ib_qp*) ;} ;


 int __ib_drain_sq (struct ib_qp*) ;
 int stub1 (struct ib_qp*) ;

void ib_drain_sq(struct ib_qp *qp)
{
 if (qp->device->drain_sq)
  qp->device->drain_sq(qp);
 else
  __ib_drain_sq(qp);
}
