
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
typedef int if_t ;
typedef scalar_t__ if_ctx_t ;


 int CTX_LOCK (scalar_t__) ;
 int CTX_UNLOCK (scalar_t__) ;
 int IFCAP_VLAN_HWFILTER ;
 int IFDI_VLAN_REGISTER (scalar_t__,int) ;
 int if_getcapenable (int ) ;
 scalar_t__ if_getsoftc (int ) ;
 int iflib_if_init_locked (scalar_t__) ;
 scalar_t__ iflib_in_detach (scalar_t__) ;

__attribute__((used)) static void
iflib_vlan_register(void *arg, if_t ifp, uint16_t vtag)
{
 if_ctx_t ctx = if_getsoftc(ifp);

 if ((void *)ctx != arg)
  return;

 if ((vtag == 0) || (vtag > 4095))
  return;

 if (iflib_in_detach(ctx))
  return;

 CTX_LOCK(ctx);
 IFDI_VLAN_REGISTER(ctx, vtag);

 if (if_getcapenable(ifp) & IFCAP_VLAN_HWFILTER)
  iflib_if_init_locked(ctx);
 CTX_UNLOCK(ctx);
}
