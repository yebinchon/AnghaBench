
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
struct lagg_softc {int sc_ifp; } ;
struct lagg_reqport {char* rp_portname; } ;
struct lagg_port {int (* lp_ioctl ) (struct ifnet*,int ,scalar_t__) ;struct lagg_softc* lp_softc; } ;
struct ifnet {scalar_t__ if_type; struct lagg_port* if_lagg; } ;
typedef scalar_t__ caddr_t ;


 int EINVAL ;
 int ENOENT ;
 scalar_t__ IFT_IEEE8023ADLAG ;
 int LAGG_RLOCK () ;
 int LAGG_RUNLOCK () ;
 int LAGG_XLOCK (struct lagg_softc*) ;
 int LAGG_XUNLOCK (struct lagg_softc*) ;



 int VLAN_CAPABILITIES (int ) ;
 struct ifnet* ifunit (char*) ;
 int lagg_capabilities (struct lagg_softc*) ;
 int lagg_port2req (struct lagg_port*,struct lagg_reqport*) ;
 int stub1 (struct ifnet*,int ,scalar_t__) ;
 int stub2 (struct ifnet*,int ,scalar_t__) ;

__attribute__((used)) static int
lagg_port_ioctl(struct ifnet *ifp, u_long cmd, caddr_t data)
{
 struct lagg_reqport *rp = (struct lagg_reqport *)data;
 struct lagg_softc *sc;
 struct lagg_port *lp = ((void*)0);
 int error = 0;


 if (ifp->if_type != IFT_IEEE8023ADLAG ||
     (lp = ifp->if_lagg) == ((void*)0) || (sc = lp->lp_softc) == ((void*)0))
  goto fallback;

 switch (cmd) {
 case 130:
  if (rp->rp_portname[0] == '\0' ||
      ifunit(rp->rp_portname) != ifp) {
   error = EINVAL;
   break;
  }

  LAGG_RLOCK();
  if ((lp = ifp->if_lagg) == ((void*)0) || lp->lp_softc != sc) {
   error = ENOENT;
   LAGG_RUNLOCK();
   break;
  }

  lagg_port2req(lp, rp);
  LAGG_RUNLOCK();
  break;

 case 129:
  if (lp->lp_ioctl == ((void*)0)) {
   error = EINVAL;
   break;
  }
  error = (*lp->lp_ioctl)(ifp, cmd, data);
  if (error)
   break;


  LAGG_XLOCK(sc);
  lagg_capabilities(sc);
  LAGG_XUNLOCK(sc);
  VLAN_CAPABILITIES(sc->sc_ifp);
  break;

 case 128:

  error = EINVAL;
  break;

 default:
  goto fallback;
 }

 return (error);

fallback:
 if (lp != ((void*)0) && lp->lp_ioctl != ((void*)0))
  return ((*lp->lp_ioctl)(ifp, cmd, data));

 return (EINVAL);
}
