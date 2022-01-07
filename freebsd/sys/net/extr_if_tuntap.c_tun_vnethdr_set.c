
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tuntap_softc {int tun_vhdrlen; } ;
struct ifnet {int if_capabilities; int if_capenable; struct tuntap_softc* if_softc; } ;


 int TAP_VNET_HDR_CAPS ;
 int TUNDEBUG (struct ifnet*,char*,int,int ) ;
 int TUN_LOCK_ASSERT (struct tuntap_softc*) ;
 int tun_caps_changed (struct ifnet*) ;

__attribute__((used)) static void
tun_vnethdr_set(struct ifnet *ifp, int vhdrlen)
{
 struct tuntap_softc *tp = ifp->if_softc;

 TUN_LOCK_ASSERT(tp);

 if (tp->tun_vhdrlen == vhdrlen)
  return;






 if (vhdrlen != 0)
  ifp->if_capabilities |=
   TAP_VNET_HDR_CAPS;
 else
  ifp->if_capabilities &=
   ~TAP_VNET_HDR_CAPS;




 ifp->if_capenable &= ifp->if_capabilities;
 tun_caps_changed(ifp);
 tp->tun_vhdrlen = vhdrlen;

 TUNDEBUG(ifp, "vnet_hdr_len=%d, if_capabilities=%x\n",
     vhdrlen, ifp->if_capabilities);
}
