
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;
struct toedev {int dummy; } ;
struct sockaddr {int sa_family; } ;
struct ifnet {scalar_t__ if_type; scalar_t__ if_pcp; } ;




 int EPROTONOSUPPORT ;
 int EVL_MAKETAG (int,int,int ) ;
 scalar_t__ IFNET_PCP_NONE ;
 scalar_t__ IFT_L2VLAN ;
 int VLAN_PCP (struct ifnet*,int*) ;
 int VLAN_TAG (struct ifnet*,int*) ;
 int arpresolve (struct ifnet*,int ,int *,struct sockaddr*,int *,int *,int *) ;
 int nd6_resolve (struct ifnet*,int ,int *,struct sockaddr*,int *,int *,int *) ;

int
toe_l2_resolve(struct toedev *tod, struct ifnet *ifp, struct sockaddr *sa,
    uint8_t *lladdr, uint16_t *vtag)
{
 int rc;
 uint16_t vid, pcp;

 switch (sa->sa_family) {
 default:
  return (EPROTONOSUPPORT);
 }

 if (rc == 0) {
  vid = 0xfff;
  pcp = 0;
  if (ifp->if_type == IFT_L2VLAN) {
   VLAN_TAG(ifp, &vid);
   VLAN_PCP(ifp, &pcp);
  } else if (ifp->if_pcp != IFNET_PCP_NONE) {
   vid = 0;
   pcp = ifp->if_pcp;
  }
  *vtag = EVL_MAKETAG(vid, pcp, 0);
 }

 return (rc);
}
