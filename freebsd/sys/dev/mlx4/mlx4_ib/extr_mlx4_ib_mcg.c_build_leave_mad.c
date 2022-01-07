
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int method; } ;
struct ib_sa_mad {TYPE_1__ mad_hdr; } ;
struct mcast_req {struct ib_sa_mad sa_mad; } ;


 int IB_SA_METHOD_DELETE ;

__attribute__((used)) static void build_leave_mad(struct mcast_req *req)
{
 struct ib_sa_mad *mad = &req->sa_mad;

 mad->mad_hdr.method = IB_SA_METHOD_DELETE;
}
