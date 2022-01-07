
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifreq {int ifr_reqcap; } ;
struct ifnet {int if_capenable; int (* if_ioctl ) (struct ifnet*,int ,int ) ;int if_xname; } ;
struct bridge_softc {int sc_ifp; } ;
struct bridge_iflist {struct ifnet* bif_ifp; } ;
typedef int ifr ;
typedef int caddr_t ;


 int BRIDGE_IFCAPS_MASK ;
 int BRIDGE_IFCAPS_STRIP ;
 int BRIDGE_UNLOCK_ASSERT (struct bridge_softc*) ;
 int SIOCSIFCAP ;
 int bzero (struct ifreq*,int) ;
 int if_printf (int ,char*,int ,int) ;
 int stub1 (struct ifnet*,int ,int ) ;

__attribute__((used)) static void
bridge_set_ifcap(struct bridge_softc *sc, struct bridge_iflist *bif, int set)
{
 struct ifnet *ifp = bif->bif_ifp;
 struct ifreq ifr;
 int error, mask, stuck;

 BRIDGE_UNLOCK_ASSERT(sc);

 bzero(&ifr, sizeof(ifr));
 ifr.ifr_reqcap = set;

 if (ifp->if_capenable != set) {
  error = (*ifp->if_ioctl)(ifp, SIOCSIFCAP, (caddr_t)&ifr);
  if (error)
   if_printf(sc->sc_ifp,
       "error setting capabilities on %s: %d\n",
       ifp->if_xname, error);
  mask = BRIDGE_IFCAPS_MASK | BRIDGE_IFCAPS_STRIP;
  stuck = ifp->if_capenable & mask & ~set;
  if (stuck != 0)
   if_printf(sc->sc_ifp,
       "can't disable some capabilities on %s: 0x%x\n",
       ifp->if_xname, stuck);
 }
}
