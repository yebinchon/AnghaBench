
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ib_qp {int usecnt; TYPE_1__* device; } ;
struct ib_flow {struct ib_qp* qp; } ;
struct TYPE_2__ {int (* destroy_flow ) (struct ib_flow*) ;} ;


 int atomic_dec (int *) ;
 int stub1 (struct ib_flow*) ;

int ib_destroy_flow(struct ib_flow *flow_id)
{
 int err;
 struct ib_qp *qp = flow_id->qp;

 err = qp->device->destroy_flow(flow_id);
 if (!err)
  atomic_dec(&qp->usecnt);
 return err;
}
