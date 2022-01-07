
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct tsec_softc {struct ifnet* tsec_ifp; } ;
struct ifnet {int if_capenable; scalar_t__ if_hwassist; } ;


 int IFCAP_RXCSUM ;
 int IFCAP_TXCSUM ;
 scalar_t__ TSEC_CHECKSUM_FEATURES ;
 int TSEC_GLOBAL_LOCK_ASSERT (struct tsec_softc*) ;
 int TSEC_RCTRL_IPCSEN ;
 int TSEC_RCTRL_PRSDEP ;
 int TSEC_RCTRL_PRSDEP_PARSE_L2 ;
 int TSEC_RCTRL_PRSDEP_PARSE_L234 ;
 int TSEC_RCTRL_TUCSEN ;
 int TSEC_RCTRL_VLEX ;
 int TSEC_READ (struct tsec_softc*,int ) ;
 int TSEC_REG_RCTRL ;
 int TSEC_REG_TCTRL ;
 int TSEC_TCTRL_IPCSEN ;
 int TSEC_TCTRL_TUCSEN ;
 int TSEC_WRITE (struct tsec_softc*,int ,int) ;

__attribute__((used)) static void
tsec_offload_setup(struct tsec_softc *sc)
{
 struct ifnet *ifp = sc->tsec_ifp;
 uint32_t reg;

 TSEC_GLOBAL_LOCK_ASSERT(sc);

 reg = TSEC_READ(sc, TSEC_REG_TCTRL);
 reg |= TSEC_TCTRL_IPCSEN | TSEC_TCTRL_TUCSEN;

 if (ifp->if_capenable & IFCAP_TXCSUM)
  ifp->if_hwassist = TSEC_CHECKSUM_FEATURES;
 else
  ifp->if_hwassist = 0;

 TSEC_WRITE(sc, TSEC_REG_TCTRL, reg);

 reg = TSEC_READ(sc, TSEC_REG_RCTRL);
 reg &= ~(TSEC_RCTRL_IPCSEN | TSEC_RCTRL_TUCSEN | TSEC_RCTRL_PRSDEP);
 reg |= TSEC_RCTRL_PRSDEP_PARSE_L2 | TSEC_RCTRL_VLEX;

 if (ifp->if_capenable & IFCAP_RXCSUM)
  reg |= TSEC_RCTRL_IPCSEN | TSEC_RCTRL_TUCSEN |
      TSEC_RCTRL_PRSDEP_PARSE_L234;

 TSEC_WRITE(sc, TSEC_REG_RCTRL, reg);
}
