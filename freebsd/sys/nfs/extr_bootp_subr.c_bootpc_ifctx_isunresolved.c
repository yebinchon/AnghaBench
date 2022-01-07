
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bootpc_ifcontext {scalar_t__ state; } ;


 scalar_t__ IF_BOOTP_UNRESOLVED ;
 scalar_t__ IF_DHCP_UNRESOLVED ;

__attribute__((used)) static __inline int
bootpc_ifctx_isunresolved(struct bootpc_ifcontext *ifctx)
{

 if (ifctx->state == IF_BOOTP_UNRESOLVED ||
     ifctx->state == IF_DHCP_UNRESOLVED)
  return 1;
 return 0;
}
