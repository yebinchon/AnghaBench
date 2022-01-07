
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u_long ;
struct virtio_net_hdr_mrg_rxbuf {int dummy; } ;
struct virtio_net_hdr {int dummy; } ;
struct TYPE_4__ {int octet; } ;
struct tuntap_softc {int tun_flags; int tun_vhdrlen; int tun_sigio; int tun_pid; TYPE_1__ tun_ether; } ;
struct tuninfo {int baudrate; int type; int mtu; } ;
struct thread {int dummy; } ;
struct mbuf {int m_len; struct mbuf* m_next; } ;
struct ifreq {int ifr_mtu; int ifr_name; } ;
struct ifnet {int if_flags; int if_snd; int if_baudrate; int if_type; int if_mtu; int if_vnet; int if_xname; } ;
struct cdev {struct tuntap_softc* si_drv1; } ;
typedef int * caddr_t ;
struct TYPE_6__ {TYPE_2__* td_proc; } ;
struct TYPE_5__ {int p_pid; } ;


 int CURVNET_RESTORE () ;
 int CURVNET_SET (int ) ;
 int EBUSY ;
 int EINVAL ;
 int ENOTTY ;
 int EPROTOTYPE ;






 int IFF_CANTCHANGE ;
 int IFF_MULTICAST ;

 int IFF_UP ;
 int IFNAMSIZ ;
 int IFQ_IS_EMPTY (int *) ;
 int IFQ_LOCK (int *) ;
 int IFQ_POLL_NOLOCK (int *,struct mbuf*) ;
 int IFQ_UNLOCK (int *) ;
 int IOCPARM_IVAL (int *) ;


 int SIOCSIFMTU ;




 struct ifnet* TUN2IFP (struct tuntap_softc*) ;
 int TUN_ASYNC ;
 int TUN_IFHEAD ;
 int TUN_L2 ;
 int TUN_LMODE ;
 int TUN_LOCK (struct tuntap_softc*) ;
 int TUN_UNLOCK (struct tuntap_softc*) ;
 int TUN_VMIO_FLAG_MASK ;

 int _IO (char,int ) ;
 int bcopy (int *,int *,int) ;
 TYPE_3__* curthread ;
 int fgetown (int *) ;
 int fsetown (int,int *) ;
 int if_name (struct ifnet*) ;
 int ifhwioctl (int ,struct ifnet*,int *,struct thread*) ;
 int strlcpy (int ,int ,int ) ;
 int tun_vnethdr_set (struct ifnet*,int) ;
 int tundebug ;

__attribute__((used)) static int
tunioctl(struct cdev *dev, u_long cmd, caddr_t data, int flag,
    struct thread *td)
{
 struct ifreq ifr, *ifrp;
 struct tuntap_softc *tp = dev->si_drv1;
 struct ifnet *ifp = TUN2IFP(tp);
 struct tuninfo *tunp;
 int error, iflags, ival;
 bool l2tun;

 l2tun = (tp->tun_flags & TUN_L2) != 0;
 if (l2tun) {

  switch(cmd) {
  case 128:
   iflags = *(int *)data;
   iflags &= TUN_VMIO_FLAG_MASK;
   iflags &= ~IFF_CANTCHANGE;
   iflags |= IFF_UP;

   TUN_LOCK(tp);
   ifp->if_flags = iflags |
       (ifp->if_flags & IFF_CANTCHANGE);
   TUN_UNLOCK(tp);

   return (0);
  case 144:
   TUN_LOCK(tp);
   bcopy(&tp->tun_ether.octet, data,
       sizeof(tp->tun_ether.octet));
   TUN_UNLOCK(tp);

   return (0);
  case 143:
   TUN_LOCK(tp);
   bcopy(data, &tp->tun_ether.octet,
       sizeof(tp->tun_ether.octet));
   TUN_UNLOCK(tp);

   return (0);
  case 141:
   ival = *(int *)data;
   if (ival != 0 &&
       ival != sizeof(struct virtio_net_hdr) &&
       ival != sizeof(struct virtio_net_hdr_mrg_rxbuf)) {
    return (EINVAL);
   }
   TUN_LOCK(tp);
   tun_vnethdr_set(ifp, ival);
   TUN_UNLOCK(tp);

   return (0);
  case 142:
   TUN_LOCK(tp);
   *(int *)data = tp->tun_vhdrlen;
   TUN_UNLOCK(tp);

   return (0);
  }


 } else {
  switch (cmd) {
  case 129:
   TUN_LOCK(tp);
   if (*(int *)data) {
    tp->tun_flags |= TUN_LMODE;
    tp->tun_flags &= ~TUN_IFHEAD;
   } else
    tp->tun_flags &= ~TUN_LMODE;
   TUN_UNLOCK(tp);

   return (0);
  case 133:
   TUN_LOCK(tp);
   if (*(int *)data) {
    tp->tun_flags |= TUN_IFHEAD;
    tp->tun_flags &= ~TUN_LMODE;
   } else
    tp->tun_flags &= ~TUN_IFHEAD;
   TUN_UNLOCK(tp);

   return (0);
  case 137:
   TUN_LOCK(tp);
   *(int *)data = (tp->tun_flags & TUN_IFHEAD) ? 1 : 0;
   TUN_UNLOCK(tp);

   return (0);
  case 131:

   if (TUN2IFP(tp)->if_flags & IFF_UP)
    return (EBUSY);

   switch (*(int *)data & ~IFF_MULTICAST) {
   case 145:
   case 146:
    TUN_LOCK(tp);
    TUN2IFP(tp)->if_flags &=
        ~(146|145|IFF_MULTICAST);
    TUN2IFP(tp)->if_flags |= *(int *)data;
    TUN_UNLOCK(tp);

    break;
   default:
    return (EINVAL);
   }

   return (0);
  case 130:
   TUN_LOCK(tp);
   tp->tun_pid = curthread->td_proc->p_pid;
   TUN_UNLOCK(tp);

   return (0);
  }

 }

 switch (cmd) {
 case 135:
  ifrp = (struct ifreq *)data;
  strlcpy(ifrp->ifr_name, TUN2IFP(tp)->if_xname, IFNAMSIZ);

  return (0);
 case 132:
  tunp = (struct tuninfo *)data;
  if (TUN2IFP(tp)->if_type != tunp->type)
   return (EPROTOTYPE);
  TUN_LOCK(tp);
  if (TUN2IFP(tp)->if_mtu != tunp->mtu) {
   strlcpy(ifr.ifr_name, if_name(TUN2IFP(tp)), IFNAMSIZ);
   ifr.ifr_mtu = tunp->mtu;
   CURVNET_SET(TUN2IFP(tp)->if_vnet);
   error = ifhwioctl(SIOCSIFMTU, TUN2IFP(tp),
       (caddr_t)&ifr, td);
   CURVNET_RESTORE();
   if (error) {
    TUN_UNLOCK(tp);
    return (error);
   }
  }
  TUN2IFP(tp)->if_baudrate = tunp->baudrate;
  TUN_UNLOCK(tp);
  break;
 case 136:
  tunp = (struct tuninfo *)data;
  TUN_LOCK(tp);
  tunp->mtu = TUN2IFP(tp)->if_mtu;
  tunp->type = TUN2IFP(tp)->if_type;
  tunp->baudrate = TUN2IFP(tp)->if_baudrate;
  TUN_UNLOCK(tp);
  break;
 case 134:
  tundebug = *(int *)data;
  break;
 case 138:
  *(int *)data = tundebug;
  break;
 case 149:
  break;
 case 151:
  TUN_LOCK(tp);
  if (*(int *)data)
   tp->tun_flags |= TUN_ASYNC;
  else
   tp->tun_flags &= ~TUN_ASYNC;
  TUN_UNLOCK(tp);
  break;
 case 148:
  if (!IFQ_IS_EMPTY(&TUN2IFP(tp)->if_snd)) {
   struct mbuf *mb;
   IFQ_LOCK(&TUN2IFP(tp)->if_snd);
   IFQ_POLL_NOLOCK(&TUN2IFP(tp)->if_snd, mb);
   for (*(int *)data = 0; mb != ((void*)0); mb = mb->m_next)
    *(int *)data += mb->m_len;
   IFQ_UNLOCK(&TUN2IFP(tp)->if_snd);
  } else
   *(int *)data = 0;
  break;
 case 147:
  return (fsetown(*(int *)data, &tp->tun_sigio));

 case 150:
  *(int *)data = fgetown(&tp->tun_sigio);
  return (0);


 case 139:
  return (fsetown(-(*(int *)data), &tp->tun_sigio));


 case 140:
  *(int *)data = -fgetown(&tp->tun_sigio);
  return (0);

 default:
  return (ENOTTY);
 }
 return (0);
}
