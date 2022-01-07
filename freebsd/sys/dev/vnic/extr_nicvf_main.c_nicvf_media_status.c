
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nicvf {int speed; scalar_t__ duplex; scalar_t__ link_up; } ;
struct ifnet {int dummy; } ;
struct ifmediareq {int ifm_active; int ifm_status; } ;


 int IFM_1000_T ;
 int IFM_100_TX ;
 int IFM_10G_SR ;
 int IFM_10_T ;
 int IFM_40G_CR4 ;
 int IFM_ACTIVE ;
 int IFM_AUTO ;
 int IFM_AVALID ;
 int IFM_ETHER ;
 int IFM_FDX ;
 int IFM_HDX ;
 int NICVF_CORE_LOCK (struct nicvf*) ;
 int NICVF_CORE_UNLOCK (struct nicvf*) ;





 struct nicvf* if_getsoftc (struct ifnet*) ;

__attribute__((used)) static void
nicvf_media_status(struct ifnet *ifp, struct ifmediareq *ifmr)
{
 struct nicvf *nic = if_getsoftc(ifp);

 NICVF_CORE_LOCK(nic);

 ifmr->ifm_status = IFM_AVALID;
 ifmr->ifm_active = IFM_ETHER;

 if (nic->link_up) {

  ifmr->ifm_status |= IFM_ACTIVE;
 }

 switch (nic->speed) {
 case 132:
  ifmr->ifm_active |= IFM_10_T;
  break;
 case 131:
  ifmr->ifm_active |= IFM_100_TX;
  break;
 case 130:
  ifmr->ifm_active |= IFM_1000_T;
  break;
 case 129:
  ifmr->ifm_active |= IFM_10G_SR;
  break;
 case 128:
  ifmr->ifm_active |= IFM_40G_CR4;
  break;
 default:
  ifmr->ifm_active |= IFM_AUTO;
  break;
 }

 if (nic->duplex)
  ifmr->ifm_active |= IFM_FDX;
 else
  ifmr->ifm_active |= IFM_HDX;

 NICVF_CORE_UNLOCK(nic);
}
