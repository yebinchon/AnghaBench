
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct tuntap_softc {int tun_rsel; } ;
struct thread {int dummy; } ;
struct TYPE_4__ {int ifq_len; } ;
struct ifnet {TYPE_1__ if_snd; } ;
struct cdev {struct tuntap_softc* si_drv1; } ;


 int IFQ_IS_EMPTY (TYPE_1__*) ;
 int IFQ_LOCK (TYPE_1__*) ;
 int IFQ_UNLOCK (TYPE_1__*) ;
 int POLLIN ;
 int POLLOUT ;
 int POLLRDNORM ;
 int POLLWRNORM ;
 struct ifnet* TUN2IFP (struct tuntap_softc*) ;
 int TUNDEBUG (struct ifnet*,char*,...) ;
 int selrecord (struct thread*,int *) ;

__attribute__((used)) static int
tunpoll(struct cdev *dev, int events, struct thread *td)
{
 struct tuntap_softc *tp = dev->si_drv1;
 struct ifnet *ifp = TUN2IFP(tp);
 int revents = 0;

 TUNDEBUG(ifp, "tunpoll\n");

 if (events & (POLLIN | POLLRDNORM)) {
  IFQ_LOCK(&ifp->if_snd);
  if (!IFQ_IS_EMPTY(&ifp->if_snd)) {
   TUNDEBUG(ifp, "tunpoll q=%d\n", ifp->if_snd.ifq_len);
   revents |= events & (POLLIN | POLLRDNORM);
  } else {
   TUNDEBUG(ifp, "tunpoll waiting\n");
   selrecord(td, &tp->tun_rsel);
  }
  IFQ_UNLOCK(&ifp->if_snd);
 }
 revents |= events & (POLLOUT | POLLWRNORM);

 return (revents);
}
