
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct ifnet {scalar_t__ if_softc; } ;
struct ifmedia {int ifm_media; } ;
struct TYPE_3__ {struct ifmedia media; } ;
typedef TYPE_1__ qlnx_host_t ;


 int EINVAL ;
 scalar_t__ IFM_ETHER ;
 scalar_t__ IFM_TYPE (int ) ;
 int QL_DPRINT2 (TYPE_1__*,char*) ;

__attribute__((used)) static int
qlnx_media_change(struct ifnet *ifp)
{
 qlnx_host_t *ha;
 struct ifmedia *ifm;
 int ret = 0;

 ha = (qlnx_host_t *)ifp->if_softc;

 QL_DPRINT2(ha, "enter\n");

 ifm = &ha->media;

 if (IFM_TYPE(ifm->ifm_media) != IFM_ETHER)
  ret = EINVAL;

 QL_DPRINT2(ha, "exit\n");

 return (ret);
}
