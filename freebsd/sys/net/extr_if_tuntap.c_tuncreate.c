
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u_int32_t ;
typedef int u_char ;
struct tuntap_softc {int tun_flags; struct ifnet* tun_ifp; struct tuntap_driver* tun_drv; } ;
struct TYPE_4__ {int d_name; } ;
struct tuntap_driver {TYPE_1__ cdevsw; } ;
struct TYPE_5__ {scalar_t__ ifq_drv_maxlen; } ;
struct ifnet {int if_flags; int if_xname; TYPE_2__ if_snd; int if_output; int if_start; int if_mtu; int if_init; int if_capenable; int if_capabilities; int if_ioctl; struct tuntap_softc* if_softc; } ;
struct ether_addr {int octet; } ;
struct cdev {struct tuntap_softc* si_drv1; } ;


 int DLT_NULL ;
 int ETHERMTU ;
 int IFCAP_LINKSTATE ;
 int IFF_BROADCAST ;
 int IFF_MULTICAST ;
 int IFF_POINTOPOINT ;
 int IFF_SIMPLEX ;
 int IFQ_SET_MAXLEN (TYPE_2__*,int ) ;
 int IFQ_SET_READY (TYPE_2__*) ;
 int IFT_ETHER ;
 int IFT_PPP ;
 int KASSERT (int ,char*) ;
 int TUNDEBUG (struct ifnet*,char*,int ,int ) ;
 int TUNMTU ;
 int TUN_INITED ;
 int TUN_L2 ;
 int TUN_LOCK (struct tuntap_softc*) ;
 int TUN_UNLOCK (struct tuntap_softc*) ;
 int bpfattach (struct ifnet*,int ,int) ;
 int dev2unit (struct cdev*) ;
 int ether_gen_addr (struct ifnet*,struct ether_addr*) ;
 int ether_ifattach (struct ifnet*,int ) ;
 struct ifnet* if_alloc (int ) ;
 int if_attach (struct ifnet*) ;
 int if_initname (struct ifnet*,int ,int ) ;
 int ifqmaxlen ;
 int panic (char*,int ,int ) ;
 int tunifinit ;
 int tunifioctl ;
 int tunoutput ;
 int tunstart ;
 int tunstart_l2 ;

__attribute__((used)) static void
tuncreate(struct cdev *dev)
{
 struct tuntap_driver *drv;
 struct tuntap_softc *tp;
 struct ifnet *ifp;
 struct ether_addr eaddr;
 int iflags;
 u_char type;

 tp = dev->si_drv1;
 KASSERT(tp != ((void*)0),
     ("si_drv1 should have been initialized at creation"));

 drv = tp->tun_drv;
 iflags = IFF_MULTICAST;
 if ((tp->tun_flags & TUN_L2) != 0) {
  type = IFT_ETHER;
  iflags |= IFF_BROADCAST | IFF_SIMPLEX;
 } else {
  type = IFT_PPP;
  iflags |= IFF_POINTOPOINT;
 }
 ifp = tp->tun_ifp = if_alloc(type);
 if (ifp == ((void*)0))
  panic("%s%d: failed to if_alloc() interface.\n",
      drv->cdevsw.d_name, dev2unit(dev));
 ifp->if_softc = tp;
 if_initname(ifp, drv->cdevsw.d_name, dev2unit(dev));
 ifp->if_ioctl = tunifioctl;
 ifp->if_flags = iflags;
 IFQ_SET_MAXLEN(&ifp->if_snd, ifqmaxlen);
 ifp->if_capabilities |= IFCAP_LINKSTATE;
 ifp->if_capenable |= IFCAP_LINKSTATE;

 if ((tp->tun_flags & TUN_L2) != 0) {
  ifp->if_mtu = ETHERMTU;
  ifp->if_init = tunifinit;
  ifp->if_start = tunstart_l2;

  ether_gen_addr(ifp, &eaddr);
  ether_ifattach(ifp, eaddr.octet);
 } else {
  ifp->if_mtu = TUNMTU;
  ifp->if_start = tunstart;
  ifp->if_output = tunoutput;

  ifp->if_snd.ifq_drv_maxlen = 0;
  IFQ_SET_READY(&ifp->if_snd);

  if_attach(ifp);
  bpfattach(ifp, DLT_NULL, sizeof(u_int32_t));
 }

 TUN_LOCK(tp);
 tp->tun_flags |= TUN_INITED;
 TUN_UNLOCK(tp);

 TUNDEBUG(ifp, "interface %s is created, minor = %#x\n",
     ifp->if_xname, dev2unit(dev));
}
