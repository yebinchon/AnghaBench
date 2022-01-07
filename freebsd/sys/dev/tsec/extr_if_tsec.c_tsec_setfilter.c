
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct tsec_softc {struct ifnet* tsec_ifp; } ;
struct ifnet {int if_flags; } ;


 int IFF_PROMISC ;
 int TSEC_RCTRL_PROM ;
 int TSEC_READ (struct tsec_softc*,int ) ;
 int TSEC_REG_RCTRL ;
 int TSEC_WRITE (struct tsec_softc*,int ,int ) ;

__attribute__((used)) static void
tsec_setfilter(struct tsec_softc *sc)
{
 struct ifnet *ifp;
 uint32_t flags;

 ifp = sc->tsec_ifp;
 flags = TSEC_READ(sc, TSEC_REG_RCTRL);


 if (ifp->if_flags & IFF_PROMISC)
  flags |= TSEC_RCTRL_PROM;
 else
  flags &= ~TSEC_RCTRL_PROM;

 TSEC_WRITE(sc, TSEC_REG_RCTRL, flags);
}
