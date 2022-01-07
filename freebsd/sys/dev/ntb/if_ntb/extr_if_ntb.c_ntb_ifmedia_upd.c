
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifmedia {int ifm_media; } ;
struct ntb_net_ctx {struct ifmedia media; } ;
struct ifnet {int dummy; } ;


 int EINVAL ;
 scalar_t__ IFM_ETHER ;
 scalar_t__ IFM_TYPE (int ) ;
 struct ntb_net_ctx* if_getsoftc (struct ifnet*) ;

__attribute__((used)) static int
ntb_ifmedia_upd(struct ifnet *ifp)
{
 struct ntb_net_ctx *sc = if_getsoftc(ifp);
 struct ifmedia *ifm = &sc->media;

 if (IFM_TYPE(ifm->ifm_media) != IFM_ETHER)
  return (EINVAL);

 return (0);
}
