
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smc_softc {int smc_mask; struct ifnet* smc_ifp; } ;
struct ifnet {int if_capenable; } ;


 int EPH_INT ;
 int IFCAP_POLLING ;
 int MSK ;
 int RCR ;
 int RCR_RXEN ;
 int RCR_STRIP_CRC ;
 int RCV_INT ;
 int RPCR ;
 int RPCR_ANEG ;
 int RPCR_LED_ACT_ANY ;
 int RPCR_LED_LINK_ANY ;
 int RPCR_LSA_SHIFT ;
 int RPCR_LSB_SHIFT ;
 int RX_OVRN_INT ;
 int SMC_ASSERT_LOCKED (struct smc_softc*) ;
 int TCR ;
 int TCR_PAD_EN ;
 int TCR_TXENA ;
 int TX_INT ;
 int smc_select_bank (struct smc_softc*,int) ;
 int smc_write_1 (struct smc_softc*,int ,int) ;
 int smc_write_2 (struct smc_softc*,int ,int) ;

__attribute__((used)) static void
smc_enable(struct smc_softc *sc)
{
 struct ifnet *ifp;

 SMC_ASSERT_LOCKED(sc);
 ifp = sc->smc_ifp;




 smc_select_bank(sc, 0);
 smc_write_2(sc, RPCR, RPCR_ANEG | (RPCR_LED_LINK_ANY << RPCR_LSA_SHIFT)
     | (RPCR_LED_ACT_ANY << RPCR_LSB_SHIFT));




 smc_write_2(sc, TCR, TCR_TXENA | TCR_PAD_EN);
 smc_write_2(sc, RCR, RCR_RXEN | RCR_STRIP_CRC);




 smc_select_bank(sc, 2);
 sc->smc_mask = EPH_INT | RX_OVRN_INT | RCV_INT | TX_INT;
 if ((ifp->if_capenable & IFCAP_POLLING) != 0)
  smc_write_1(sc, MSK, sc->smc_mask);
}
