
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifmedia {int ifm_media; } ;
struct lio {int oct_dev; struct ifmedia ifmedia; } ;
struct ifnet {int dummy; } ;


 int EINVAL ;





 scalar_t__ IFM_ETHER ;
 int IFM_SUBTYPE (int ) ;
 scalar_t__ IFM_TYPE (int ) ;
 struct lio* if_getsoftc (struct ifnet*) ;
 int lio_dev_err (int ,char*,int) ;

__attribute__((used)) static int
lio_ifmedia_update(struct ifnet *ifp)
{
 struct lio *lio = if_getsoftc(ifp);
 struct ifmedia *ifm;

 ifm = &lio->ifmedia;


 if (IFM_TYPE(ifm->ifm_media) != IFM_ETHER)
  return (EINVAL);

 switch (IFM_SUBTYPE(ifm->ifm_media)) {
 case 128:
  break;
 case 132:
 case 131:
 case 130:
 case 129:
 default:

  lio_dev_err(lio->oct_dev, "Invalid media type (%d)\n",
       IFM_SUBTYPE(ifm->ifm_media));
  return (EINVAL);
 }

 return (0);
}
