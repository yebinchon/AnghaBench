
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ifnet {void* if_baudrate; int if_softc; } ;
struct ifmedia {int ifm_media; } ;
typedef TYPE_1__* priv_p ;
struct TYPE_2__ {struct ifmedia media; } ;


 int EINVAL ;
 int IFM_1000_T ;
 scalar_t__ IFM_AUTO ;
 int IFM_ETHER ;
 scalar_t__ IFM_SUBTYPE (int) ;
 int IFM_TYPE (int) ;
 void* ifmedia_baudrate (int) ;

__attribute__((used)) static int
ng_eiface_mediachange(struct ifnet *ifp)
{
 const priv_p priv = (priv_p)ifp->if_softc;
 struct ifmedia *ifm = &priv->media;

 if (IFM_TYPE(ifm->ifm_media) != IFM_ETHER)
  return (EINVAL);
 if (IFM_SUBTYPE(ifm->ifm_media) == IFM_AUTO)
  ifp->if_baudrate = ifmedia_baudrate(IFM_ETHER | IFM_1000_T);
 else
  ifp->if_baudrate = ifmedia_baudrate(ifm->ifm_media);

 return (0);
}
