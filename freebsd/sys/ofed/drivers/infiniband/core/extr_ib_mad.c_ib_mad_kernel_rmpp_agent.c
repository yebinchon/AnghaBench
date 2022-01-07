
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ib_mad_agent {int flags; scalar_t__ rmpp_version; } ;


 int IB_MAD_USER_RMPP ;

int ib_mad_kernel_rmpp_agent(const struct ib_mad_agent *agent)
{
 return agent->rmpp_version && !(agent->flags & IB_MAD_USER_RMPP);
}
