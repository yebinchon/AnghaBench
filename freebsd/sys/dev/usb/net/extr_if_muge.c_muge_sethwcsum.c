
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct muge_softc {int sc_rfe_ctl; int sc_ue; } ;
struct ifnet {int if_capabilities; } ;


 int EIO ;
 int ETH_RFE_CTL ;
 int ETH_RFE_CTL_ICMP_COE_ ;
 int ETH_RFE_CTL_IGMP_COE_ ;
 int ETH_RFE_CTL_IP_COE_ ;
 int ETH_RFE_CTL_TCPUDP_COE_ ;
 int ETH_RFE_CTL_VLAN_FILTER_ ;
 int IFCAP_RXCSUM ;
 int MA_OWNED ;
 int MUGE_LOCK_ASSERT (struct muge_softc*,int ) ;
 int lan78xx_write_reg (struct muge_softc*,int ,int) ;
 int muge_warn_printf (struct muge_softc*,char*,int) ;
 struct ifnet* uether_getifp (int *) ;

__attribute__((used)) static int muge_sethwcsum(struct muge_softc *sc)
{
 struct ifnet *ifp = uether_getifp(&sc->sc_ue);
 int err;

 if (!ifp)
  return (-EIO);

 MUGE_LOCK_ASSERT(sc, MA_OWNED);

 if (ifp->if_capabilities & IFCAP_RXCSUM) {
  sc->sc_rfe_ctl |= ETH_RFE_CTL_IGMP_COE_ | ETH_RFE_CTL_ICMP_COE_;
  sc->sc_rfe_ctl |= ETH_RFE_CTL_TCPUDP_COE_ | ETH_RFE_CTL_IP_COE_;
 } else {
  sc->sc_rfe_ctl &=
      ~(ETH_RFE_CTL_IGMP_COE_ | ETH_RFE_CTL_ICMP_COE_);
  sc->sc_rfe_ctl &=
       ~(ETH_RFE_CTL_TCPUDP_COE_ | ETH_RFE_CTL_IP_COE_);
 }

 sc->sc_rfe_ctl &= ~ETH_RFE_CTL_VLAN_FILTER_;

 err = lan78xx_write_reg(sc, ETH_RFE_CTL, sc->sc_rfe_ctl);

 if (err != 0) {
  muge_warn_printf(sc, "failed to write ETH_RFE_CTL (err=%d)\n",
      err);
  return (err);
 }

 return (0);
}
