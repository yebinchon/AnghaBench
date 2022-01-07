
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifmedia {int ifm_media; } ;
struct adapter {int dev; } ;
typedef int if_ctx_t ;


 int EINVAL ;

 scalar_t__ IFM_ETHER ;
 int IFM_SUBTYPE (int ) ;
 scalar_t__ IFM_TYPE (int ) ;
 int INIT_DEBUGOUT (char*) ;
 int device_printf (int ,char*) ;
 struct ifmedia* iflib_get_media (int ) ;
 struct adapter* iflib_get_softc (int ) ;

__attribute__((used)) static int
ixv_if_media_change(if_ctx_t ctx)
{
 struct adapter *adapter = iflib_get_softc(ctx);
 struct ifmedia *ifm = iflib_get_media(ctx);

 INIT_DEBUGOUT("ixv_media_change: begin");

 if (IFM_TYPE(ifm->ifm_media) != IFM_ETHER)
  return (EINVAL);

 switch (IFM_SUBTYPE(ifm->ifm_media)) {
 case 128:
  break;
 default:
  device_printf(adapter->dev, "Only auto media type\n");
  return (EINVAL);
 }

 return (0);
}
