
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int octet; } ;
struct tuntap_softc {int tun_flags; int tun_pid; TYPE_1__ tun_ether; } ;
struct thread {TYPE_2__* td_proc; } ;
struct ifnet {int if_flags; int if_drv_flags; } ;
struct cdev {struct tuntap_softc* si_drv1; int si_name; } ;
struct TYPE_4__ {int p_pid; } ;


 int CURVNET_RESTORE () ;
 int CURVNET_SET (int ) ;
 int EBUSY ;
 int ENXIO ;
 int IFF_DRV_OACTIVE ;
 int IFF_DRV_RUNNING ;
 int IFF_UP ;
 int IF_LLADDR (struct ifnet*) ;
 int KASSERT (int,char*) ;
 int LINK_STATE_UP ;
 int TD_TO_VNET (struct thread*) ;
 struct ifnet* TUN2IFP (struct tuntap_softc*) ;
 int TUNDEBUG (struct ifnet*,char*) ;
 int TUN_DYING ;
 int TUN_INITED ;
 int TUN_L2 ;
 int TUN_LOCK (struct tuntap_softc*) ;
 int TUN_OPEN ;
 int TUN_UNLOCK (struct tuntap_softc*) ;
 int bcopy (int ,int ,int) ;
 int devfs_set_cdevpriv (struct tuntap_softc*,int ) ;
 int if_link_state_change (struct ifnet*,int ) ;
 scalar_t__ tapuponopen ;
 int tun_busy_locked (struct tuntap_softc*) ;
 int tundtor ;
 int tuntap_name2info (int ,int *,int*) ;

__attribute__((used)) static int
tunopen(struct cdev *dev, int flag, int mode, struct thread *td)
{
 struct ifnet *ifp;
 struct tuntap_softc *tp;
 int error, tunflags;

 tunflags = 0;
 CURVNET_SET(TD_TO_VNET(td));
 error = tuntap_name2info(dev->si_name, ((void*)0), &tunflags);
 if (error != 0) {
  CURVNET_RESTORE();
  return (error);
 }

 tp = dev->si_drv1;
 KASSERT(tp != ((void*)0),
     ("si_drv1 should have been initialized at creation"));

 TUN_LOCK(tp);
 if ((tp->tun_flags & TUN_INITED) == 0) {
  TUN_UNLOCK(tp);
  CURVNET_RESTORE();
  return (ENXIO);
 }
 if ((tp->tun_flags & (TUN_OPEN | TUN_DYING)) != 0) {
  TUN_UNLOCK(tp);
  CURVNET_RESTORE();
  return (EBUSY);
 }

 error = tun_busy_locked(tp);
 KASSERT(error == 0, ("Must be able to busy an unopen tunnel"));
 ifp = TUN2IFP(tp);

 if ((tp->tun_flags & TUN_L2) != 0) {
  bcopy(IF_LLADDR(ifp), tp->tun_ether.octet,
      sizeof(tp->tun_ether.octet));

  ifp->if_drv_flags |= IFF_DRV_RUNNING;
  ifp->if_drv_flags &= ~IFF_DRV_OACTIVE;

  if (tapuponopen)
   ifp->if_flags |= IFF_UP;
 }

 tp->tun_pid = td->td_proc->p_pid;
 tp->tun_flags |= TUN_OPEN;

 if_link_state_change(ifp, LINK_STATE_UP);
 TUNDEBUG(ifp, "open\n");
 TUN_UNLOCK(tp);
 (void)devfs_set_cdevpriv(tp, tundtor);
 CURVNET_RESTORE();
 return (0);
}
