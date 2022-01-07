
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tuntap_softc {struct cdev* tun_dev; } ;
struct knote {int kn_data; struct tuntap_softc* kn_hook; } ;
struct TYPE_2__ {int ifq_len; } ;
struct ifnet {int if_xname; TYPE_1__ if_snd; } ;
struct cdev {int dummy; } ;


 struct ifnet* TUN2IFP (struct tuntap_softc*) ;
 int TUNDEBUG (struct ifnet*,char*,int ,int ,...) ;
 int dev2unit (struct cdev*) ;

__attribute__((used)) static int
tunkqread(struct knote *kn, long hint)
{
 int ret;
 struct tuntap_softc *tp = kn->kn_hook;
 struct cdev *dev = tp->tun_dev;
 struct ifnet *ifp = TUN2IFP(tp);

 if ((kn->kn_data = ifp->if_snd.ifq_len) > 0) {
  TUNDEBUG(ifp,
      "%s have data in the queue.  Len = %d, minor = %#x\n",
      ifp->if_xname, ifp->if_snd.ifq_len, dev2unit(dev));
  ret = 1;
 } else {
  TUNDEBUG(ifp,
      "%s waiting for data, minor = %#x\n", ifp->if_xname,
      dev2unit(dev));
  ret = 0;
 }

 return (ret);
}
