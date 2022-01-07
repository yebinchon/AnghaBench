
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifreq {int dummy; } ;
struct ifnet {struct adapter* if_softc; } ;
struct adapter {int media; } ;
typedef scalar_t__ caddr_t ;


 int EIO ;
 int ether_ioctl (struct ifnet*,unsigned long,scalar_t__) ;
 int ifmedia_ioctl (struct ifnet*,struct ifreq*,int *,unsigned long) ;
 int sx_xlock (int *) ;
 int sx_xunlock (int *) ;
 int t4_trace_lock ;

__attribute__((used)) static int
tracer_ioctl(struct ifnet *ifp, unsigned long cmd, caddr_t data)
{
 int rc = 0;
 struct adapter *sc;
 struct ifreq *ifr = (struct ifreq *)data;

 switch (cmd) {
 case 128:
 case 130:
 case 135:
 case 134:
 case 131:
  break;
 case 129:
 case 133:
 case 132:
  sx_xlock(&t4_trace_lock);
  sc = ifp->if_softc;
  if (sc == ((void*)0))
   rc = EIO;
  else
   rc = ifmedia_ioctl(ifp, ifr, &sc->media, cmd);
  sx_xunlock(&t4_trace_lock);
  break;
 default:
  rc = ether_ioctl(ifp, cmd, data);
 }

 return (rc);
}
