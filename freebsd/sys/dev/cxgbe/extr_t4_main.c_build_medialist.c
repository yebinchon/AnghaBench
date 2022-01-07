
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct link_config {int supported; } ;
struct ifmedia {int ifm_list; } ;
struct port_info {int flags; struct link_config link_cfg; struct ifmedia media; } ;


 int FIXED_IFMEDIA ;
 int FW_PORT_CAP32_ANEG ;
 int G_FW_PORT_CAP32_SPEED (int) ;
 int IFM_AUTO ;
 int IFM_ETHER ;
 int IFM_FDX ;
 int IFM_NONE ;
 int IFM_UNKNOWN ;
 int LIST_EMPTY (int *) ;
 int MPASS (int) ;
 int M_FW_PORT_CAP32_SPEED ;
 int PORT_LOCK_ASSERT_OWNED (struct port_info*) ;
 int S_FW_PORT_CAP32_SPEED ;
 scalar_t__ __predict_false (int) ;
 int fls (int) ;
 int ifmedia_add (struct ifmedia*,int,int ,int *) ;
 int ifmedia_add4 (struct ifmedia*,int) ;
 int ifmedia_removeall (struct ifmedia*) ;
 int ifmedia_set (struct ifmedia*,int) ;
 int port_mword (struct port_info*,int) ;
 int set_current_media (struct port_info*) ;

__attribute__((used)) static void
build_medialist(struct port_info *pi)
{
 uint32_t ss, speed;
 int unknown, mword, bit;
 struct link_config *lc;
 struct ifmedia *ifm;

 PORT_LOCK_ASSERT_OWNED(pi);

 if (pi->flags & FIXED_IFMEDIA)
  return;




 ifm = &pi->media;
 ifmedia_removeall(ifm);
 lc = &pi->link_cfg;
 ss = G_FW_PORT_CAP32_SPEED(lc->supported);
 if (__predict_false(ss == 0)) {
  MPASS(ss != 0);
no_media:
  MPASS(LIST_EMPTY(&ifm->ifm_list));
  ifmedia_add(ifm, IFM_ETHER | IFM_NONE, 0, ((void*)0));
  ifmedia_set(ifm, IFM_ETHER | IFM_NONE);
  return;
 }

 unknown = 0;
 for (bit = S_FW_PORT_CAP32_SPEED; bit < fls(ss); bit++) {
  speed = 1 << bit;
  MPASS(speed & M_FW_PORT_CAP32_SPEED);
  if (ss & speed) {
   mword = port_mword(pi, speed);
   if (mword == IFM_NONE) {
    goto no_media;
   } else if (mword == IFM_UNKNOWN)
    unknown++;
   else
    ifmedia_add4(ifm, IFM_ETHER | IFM_FDX | mword);
  }
 }
 if (unknown > 0)
  ifmedia_add4(ifm, IFM_ETHER | IFM_FDX | IFM_UNKNOWN);
 if (lc->supported & FW_PORT_CAP32_ANEG)
  ifmedia_add(ifm, IFM_ETHER | IFM_AUTO, 0, ((void*)0));

 set_current_media(pi);
}
