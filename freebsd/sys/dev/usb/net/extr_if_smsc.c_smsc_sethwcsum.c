
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct smsc_softc {int sc_ue; } ;
struct ifnet {int if_capabilities; int if_capenable; } ;


 int EIO ;
 int IFCAP_RXCSUM ;
 int IFCAP_TXCSUM ;
 int MA_OWNED ;
 int SMSC_COE_CTRL ;
 int SMSC_COE_CTRL_RX_EN ;
 int SMSC_COE_CTRL_TX_EN ;
 int SMSC_LOCK_ASSERT (struct smsc_softc*,int ) ;
 int smsc_read_reg (struct smsc_softc*,int ,int *) ;
 int smsc_warn_printf (struct smsc_softc*,char*,int) ;
 int smsc_write_reg (struct smsc_softc*,int ,int ) ;
 struct ifnet* uether_getifp (int *) ;

__attribute__((used)) static int smsc_sethwcsum(struct smsc_softc *sc)
{
 struct ifnet *ifp = uether_getifp(&sc->sc_ue);
 uint32_t val;
 int err;

 if (!ifp)
  return (-EIO);

 SMSC_LOCK_ASSERT(sc, MA_OWNED);

 err = smsc_read_reg(sc, SMSC_COE_CTRL, &val);
 if (err != 0) {
  smsc_warn_printf(sc, "failed to read SMSC_COE_CTRL (err=%d)\n", err);
  return (err);
 }


 if ((ifp->if_capabilities & ifp->if_capenable) & IFCAP_RXCSUM)
  val |= SMSC_COE_CTRL_RX_EN;
 else
  val &= ~SMSC_COE_CTRL_RX_EN;


 if ((ifp->if_capabilities & ifp->if_capenable) & IFCAP_TXCSUM)
  val |= SMSC_COE_CTRL_TX_EN;
 else
  val &= ~SMSC_COE_CTRL_TX_EN;

 err = smsc_write_reg(sc, SMSC_COE_CTRL, val);
 if (err != 0) {
  smsc_warn_printf(sc, "failed to write SMSC_COE_CTRL (err=%d)\n", err);
  return (err);
 }

 return (0);
}
