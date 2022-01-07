
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifmedia {int ifm_media; } ;
typedef int if_ctx_t ;


 int EINVAL ;
 int ENODEV ;
 scalar_t__ IFM_ETHER ;
 scalar_t__ IFM_TYPE (int ) ;
 int INIT_DEBUGOUT (char*) ;
 int if_printf (int ,char*) ;
 int iflib_get_ifp (int ) ;
 struct ifmedia* iflib_get_media (int ) ;

__attribute__((used)) static int
ixl_if_media_change(if_ctx_t ctx)
{
 struct ifmedia *ifm = iflib_get_media(ctx);

 INIT_DEBUGOUT("ixl_media_change: begin");

 if (IFM_TYPE(ifm->ifm_media) != IFM_ETHER)
  return (EINVAL);

 if_printf(iflib_get_ifp(ctx), "Media change is not supported.\n");
 return (ENODEV);
}
