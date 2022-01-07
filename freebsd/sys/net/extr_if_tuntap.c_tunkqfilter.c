
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int si_note; } ;
struct tuntap_softc {TYPE_1__ tun_rsel; } ;
struct knote {int kn_filter; struct tuntap_softc* kn_hook; int * kn_fop; } ;
struct ifnet {int if_xname; } ;
struct cdev {struct tuntap_softc* si_drv1; } ;


 int EINVAL ;


 struct ifnet* TUN2IFP (struct tuntap_softc*) ;
 int TUNDEBUG (struct ifnet*,char*,int ,int ) ;
 int dev2unit (struct cdev*) ;
 int knlist_add (int *,struct knote*,int ) ;
 int tun_read_filterops ;
 int tun_write_filterops ;

__attribute__((used)) static int
tunkqfilter(struct cdev *dev, struct knote *kn)
{
 struct tuntap_softc *tp = dev->si_drv1;
 struct ifnet *ifp = TUN2IFP(tp);

 switch(kn->kn_filter) {
 case 129:
  TUNDEBUG(ifp, "%s kqfilter: EVFILT_READ, minor = %#x\n",
      ifp->if_xname, dev2unit(dev));
  kn->kn_fop = &tun_read_filterops;
  break;

 case 128:
  TUNDEBUG(ifp, "%s kqfilter: EVFILT_WRITE, minor = %#x\n",
      ifp->if_xname, dev2unit(dev));
  kn->kn_fop = &tun_write_filterops;
  break;

 default:
  TUNDEBUG(ifp, "%s kqfilter: invalid filter, minor = %#x\n",
      ifp->if_xname, dev2unit(dev));
  return(EINVAL);
 }

 kn->kn_hook = tp;
 knlist_add(&tp->tun_rsel.si_note, kn, 0);

 return (0);
}
