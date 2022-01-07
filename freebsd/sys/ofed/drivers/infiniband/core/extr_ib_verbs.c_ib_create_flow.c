
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ib_qp {int usecnt; TYPE_1__* device; } ;
struct ib_flow_attr {int dummy; } ;
struct ib_flow {int dummy; } ;
struct TYPE_2__ {struct ib_flow* (* create_flow ) (struct ib_qp*,struct ib_flow_attr*,int) ;} ;


 int ENOSYS ;
 struct ib_flow* ERR_PTR (int ) ;
 int IS_ERR (struct ib_flow*) ;
 int atomic_inc (int *) ;
 struct ib_flow* stub1 (struct ib_qp*,struct ib_flow_attr*,int) ;

struct ib_flow *ib_create_flow(struct ib_qp *qp,
          struct ib_flow_attr *flow_attr,
          int domain)
{
 struct ib_flow *flow_id;
 if (!qp->device->create_flow)
  return ERR_PTR(-ENOSYS);

 flow_id = qp->device->create_flow(qp, flow_attr, domain);
 if (!IS_ERR(flow_id))
  atomic_inc(&qp->usecnt);
 return flow_id;
}
