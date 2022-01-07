
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


union ib_gid {scalar_t__ raw; } ;
typedef int u16 ;
struct in6_addr {int dummy; } ;
struct ib_qp {scalar_t__ qp_type; int usecnt; TYPE_1__* device; } ;
struct TYPE_2__ {int (* attach_mcast ) (struct ib_qp*,union ib_gid*,int ) ;} ;


 int EINVAL ;
 int ENOSYS ;
 scalar_t__ IB_QPT_UD ;
 int atomic_inc (int *) ;
 int is_valid_mcast_lid (struct ib_qp*,int ) ;
 int rdma_is_multicast_addr (struct in6_addr*) ;
 int stub1 (struct ib_qp*,union ib_gid*,int ) ;

int ib_attach_mcast(struct ib_qp *qp, union ib_gid *gid, u16 lid)
{
 int ret;

 if (!qp->device->attach_mcast)
  return -ENOSYS;

 if (!rdma_is_multicast_addr((struct in6_addr *)gid->raw) ||
     qp->qp_type != IB_QPT_UD || !is_valid_mcast_lid(qp, lid))
  return -EINVAL;

 ret = qp->device->attach_mcast(qp, gid, lid);
 if (!ret)
  atomic_inc(&qp->usecnt);
 return ret;
}
