
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {int ** rl_tx_chain; int * rl_tx_dmamap; int rl_tx_tag; } ;
struct rl_softc {TYPE_1__ rl_cdata; int rl_dev; int rl_flags; int rl_stat_callout; scalar_t__ rl_watchdog_timer; struct ifnet* rl_ifp; } ;
struct ifnet {int if_drv_flags; } ;


 int BUS_DMASYNC_POSTWRITE ;
 int CSR_READ_1 (struct rl_softc*,int ) ;
 int CSR_WRITE_1 (struct rl_softc*,int ,int) ;
 int CSR_WRITE_2 (struct rl_softc*,int ,int) ;
 int CSR_WRITE_4 (struct rl_softc*,scalar_t__,int) ;
 int DELAY (int) ;
 int IFF_DRV_OACTIVE ;
 int IFF_DRV_RUNNING ;
 int RL_CMD_RX_ENB ;
 int RL_CMD_TX_ENB ;
 int RL_COMMAND ;
 int RL_FLAG_LINK ;
 int RL_IMR ;
 int RL_LOCK_ASSERT (struct rl_softc*) ;
 int RL_TIMEOUT ;
 scalar_t__ RL_TXADDR0 ;
 int RL_TX_LIST_CNT ;
 int bus_dmamap_sync (int ,int ,int ) ;
 int bus_dmamap_unload (int ,int ) ;
 int callout_stop (int *) ;
 int device_printf (int ,char*) ;
 int m_freem (int *) ;

__attribute__((used)) static void
rl_stop(struct rl_softc *sc)
{
 int i;
 struct ifnet *ifp = sc->rl_ifp;

 RL_LOCK_ASSERT(sc);

 sc->rl_watchdog_timer = 0;
 callout_stop(&sc->rl_stat_callout);
 ifp->if_drv_flags &= ~(IFF_DRV_RUNNING | IFF_DRV_OACTIVE);
 sc->rl_flags &= ~RL_FLAG_LINK;

 CSR_WRITE_1(sc, RL_COMMAND, 0x00);
 CSR_WRITE_2(sc, RL_IMR, 0x0000);
 for (i = 0; i < RL_TIMEOUT; i++) {
  DELAY(10);
  if ((CSR_READ_1(sc, RL_COMMAND) &
      (RL_CMD_RX_ENB | RL_CMD_TX_ENB)) == 0)
   break;
 }
 if (i == RL_TIMEOUT)
  device_printf(sc->rl_dev, "Unable to stop Tx/Rx MAC\n");




 for (i = 0; i < RL_TX_LIST_CNT; i++) {
  if (sc->rl_cdata.rl_tx_chain[i] != ((void*)0)) {
   bus_dmamap_sync(sc->rl_cdata.rl_tx_tag,
       sc->rl_cdata.rl_tx_dmamap[i],
       BUS_DMASYNC_POSTWRITE);
   bus_dmamap_unload(sc->rl_cdata.rl_tx_tag,
       sc->rl_cdata.rl_tx_dmamap[i]);
   m_freem(sc->rl_cdata.rl_tx_chain[i]);
   sc->rl_cdata.rl_tx_chain[i] = ((void*)0);
   CSR_WRITE_4(sc, RL_TXADDR0 + (i * sizeof(uint32_t)),
       0x0000000);
  }
 }
}
