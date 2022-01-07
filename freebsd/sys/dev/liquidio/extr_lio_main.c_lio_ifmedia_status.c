
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ duplex; scalar_t__ link_up; } ;
struct TYPE_5__ {TYPE_1__ s; } ;
struct TYPE_6__ {TYPE_2__ link; } ;
struct lio {TYPE_3__ linfo; int oct_dev; } ;
struct ifnet {int dummy; } ;
struct ifmediareq {int ifm_active; int ifm_status; } ;


 int IFM_ACTIVE ;
 int IFM_AVALID ;
 int IFM_ETHER ;
 int IFM_FDX ;
 int IFM_HDX ;
 int IFM_NONE ;
 int LIO_IFSTATE_RUNNING ;
 struct lio* if_getsoftc (struct ifnet*) ;
 int lio_get_media_subtype (int ) ;
 int lio_ifstate_check (struct lio*,int ) ;

__attribute__((used)) static void
lio_ifmedia_status(struct ifnet *ifp, struct ifmediareq *ifmr)
{
 struct lio *lio = if_getsoftc(ifp);


 if (!lio_ifstate_check(lio, LIO_IFSTATE_RUNNING)) {
  ifmr->ifm_active |= IFM_NONE;
  return;
 }


 ifmr->ifm_status = IFM_AVALID;
 ifmr->ifm_active = IFM_ETHER;

 if (lio->linfo.link.s.link_up) {
  ifmr->ifm_status |= IFM_ACTIVE;
 } else {
  ifmr->ifm_active |= IFM_NONE;
  return;
 }

 ifmr->ifm_active |= lio_get_media_subtype(lio->oct_dev);

 if (lio->linfo.link.s.duplex)
  ifmr->ifm_active |= IFM_FDX;
 else
  ifmr->ifm_active |= IFM_HDX;
}
