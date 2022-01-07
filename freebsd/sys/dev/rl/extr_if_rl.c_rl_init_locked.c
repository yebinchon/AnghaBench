
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {scalar_t__ rl_rx_buf_paddr; } ;
struct rl_softc {int rl_stat_callout; int rl_cfg1; int rl_flags; int rl_txthresh; TYPE_1__ rl_cdata; struct ifnet* rl_ifp; int rl_twister; scalar_t__ rl_twister_enable; int rl_miibus; } ;
struct mii_data {int dummy; } ;
struct ifnet {int if_drv_flags; int if_capenable; } ;
typedef int eaddr ;


 int CHK_LINK ;
 int CSR_WRITE_1 (struct rl_softc*,int ,int) ;
 int CSR_WRITE_2 (struct rl_softc*,int ,int ) ;
 int CSR_WRITE_4 (struct rl_softc*,int ,scalar_t__) ;
 int CSR_WRITE_STREAM_4 (struct rl_softc*,int ,int ) ;
 int ETHER_ADDR_LEN ;
 int IFCAP_POLLING ;
 int IFF_DRV_OACTIVE ;
 int IFF_DRV_RUNNING ;
 int IF_LLADDR (struct ifnet*) ;
 int RL_CFG1_DRVLOAD ;
 int RL_CFG1_FULLDUPLEX ;
 int RL_CMD_RX_ENB ;
 int RL_CMD_TX_ENB ;
 int RL_COMMAND ;
 int RL_EECMD ;
 int RL_EEMODE_OFF ;
 int RL_EEMODE_WRITECFG ;
 int RL_FLAG_LINK ;
 int RL_IDR0 ;
 int RL_IDR4 ;
 int RL_IMR ;
 int RL_INTRS ;
 int RL_LOCK_ASSERT (struct rl_softc*) ;
 int RL_MISSEDPKT ;
 int RL_RXADDR ;
 int RL_RXCFG ;
 scalar_t__ RL_RXCFG_CONFIG ;
 scalar_t__ RL_RX_8139_BUF_RESERVE ;
 int RL_TXCFG ;
 scalar_t__ RL_TXCFG_CONFIG ;
 int RL_TX_THRESH_INIT ;
 int bcopy (int ,int *,int ) ;
 int bzero (int *,int) ;
 int callout_reset (int *,int ,int ,struct rl_softc*) ;
 struct mii_data* device_get_softc (int ) ;
 int hz ;
 int mii_mediachg (struct mii_data*) ;
 int rl_list_rx_init (struct rl_softc*) ;
 int rl_list_tx_init (struct rl_softc*) ;
 int rl_reset (struct rl_softc*) ;
 int rl_rxfilter (struct rl_softc*) ;
 int rl_stop (struct rl_softc*) ;
 int rl_tick ;

__attribute__((used)) static void
rl_init_locked(struct rl_softc *sc)
{
 struct ifnet *ifp = sc->rl_ifp;
 struct mii_data *mii;
 uint32_t eaddr[2];

 RL_LOCK_ASSERT(sc);

 mii = device_get_softc(sc->rl_miibus);

 if ((ifp->if_drv_flags & IFF_DRV_RUNNING) != 0)
  return;




 rl_stop(sc);

 rl_reset(sc);
 if (sc->rl_twister_enable) {






  sc->rl_twister = CHK_LINK;
 }






 CSR_WRITE_1(sc, RL_EECMD, RL_EEMODE_WRITECFG);
 bzero(eaddr, sizeof(eaddr));
 bcopy(IF_LLADDR(sc->rl_ifp), eaddr, ETHER_ADDR_LEN);
 CSR_WRITE_STREAM_4(sc, RL_IDR0, eaddr[0]);
 CSR_WRITE_STREAM_4(sc, RL_IDR4, eaddr[1]);
 CSR_WRITE_1(sc, RL_EECMD, RL_EEMODE_OFF);


 CSR_WRITE_4(sc, RL_RXADDR, sc->rl_cdata.rl_rx_buf_paddr +
     RL_RX_8139_BUF_RESERVE);

 rl_list_tx_init(sc);

 rl_list_rx_init(sc);




 CSR_WRITE_1(sc, RL_COMMAND, RL_CMD_TX_ENB|RL_CMD_RX_ENB);




 CSR_WRITE_4(sc, RL_TXCFG, RL_TXCFG_CONFIG);
 CSR_WRITE_4(sc, RL_RXCFG, RL_RXCFG_CONFIG);


 rl_rxfilter(sc);
 CSR_WRITE_2(sc, RL_IMR, RL_INTRS);


 sc->rl_txthresh = RL_TX_THRESH_INIT;


 CSR_WRITE_4(sc, RL_MISSEDPKT, 0);


 CSR_WRITE_1(sc, RL_COMMAND, RL_CMD_TX_ENB|RL_CMD_RX_ENB);

 sc->rl_flags &= ~RL_FLAG_LINK;
 mii_mediachg(mii);

 CSR_WRITE_1(sc, sc->rl_cfg1, RL_CFG1_DRVLOAD|RL_CFG1_FULLDUPLEX);

 ifp->if_drv_flags |= IFF_DRV_RUNNING;
 ifp->if_drv_flags &= ~IFF_DRV_OACTIVE;

 callout_reset(&sc->rl_stat_callout, hz, rl_tick, sc);
}
