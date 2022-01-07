
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rt_softc {scalar_t__ fe_int_enable; scalar_t__ rt_chipid; scalar_t__ gdma1_base; int periodic_task; int taskqueue; int tx_done_task; int rx_done_task; int tx_watchdog_ch; int periodic_ch; scalar_t__ tx_timer; struct ifnet* ifp; } ;
struct ifnet {int if_drv_flags; } ;


 scalar_t__ FE_RST_GLO ;
 scalar_t__ GDMA_FWD_CFG ;
 int GDM_BFRC_P_SHIFT ;
 int GDM_DST_PORT_CPU ;
 int GDM_ICS_EN ;
 int GDM_MFRC_P_SHIFT ;
 int GDM_OFRC_P_SHIFT ;
 int GDM_STRPCRC ;
 int GDM_TCS_EN ;
 int GDM_UCS_EN ;
 int GDM_UFRC_P_SHIFT ;
 scalar_t__ GE_PORT_BASE ;
 int IFF_DRV_OACTIVE ;
 int IFF_DRV_RUNNING ;
 int PSE_RESET ;
 scalar_t__ RT_CHIPID_MT7620 ;
 scalar_t__ RT_CHIPID_MT7621 ;
 scalar_t__ RT_CHIPID_RT5350 ;
 int RT_DEBUG_ANY ;
 int RT_DPRINTF (struct rt_softc*,int ,char*) ;
 int RT_SOFTC_ASSERT_LOCKED (struct rt_softc*) ;
 int RT_SOFTC_LOCK (struct rt_softc*) ;
 int RT_SOFTC_UNLOCK (struct rt_softc*) ;
 int RT_WRITE (struct rt_softc*,scalar_t__,int) ;
 int callout_stop (int *) ;
 int taskqueue_block (int ) ;
 int taskqueue_drain (int ,int *) ;

__attribute__((used)) static void
rt_stop_locked(void *priv)
{
 struct rt_softc *sc;
 struct ifnet *ifp;

 sc = priv;
 ifp = sc->ifp;

 RT_DPRINTF(sc, RT_DEBUG_ANY, "stopping\n");

 RT_SOFTC_ASSERT_LOCKED(sc);
 sc->tx_timer = 0;
 ifp->if_drv_flags &= ~(IFF_DRV_RUNNING | IFF_DRV_OACTIVE);
 callout_stop(&sc->periodic_ch);
 callout_stop(&sc->tx_watchdog_ch);
 RT_SOFTC_UNLOCK(sc);
 taskqueue_block(sc->taskqueue);
 RT_SOFTC_LOCK(sc);


 RT_WRITE(sc, sc->fe_int_enable, 0);

 if(sc->rt_chipid != RT_CHIPID_RT5350 &&
    sc->rt_chipid != RT_CHIPID_MT7620 &&
    sc->rt_chipid != RT_CHIPID_MT7621) {

  RT_WRITE(sc, GE_PORT_BASE + FE_RST_GLO, PSE_RESET);
 }

 if (sc->gdma1_base != 0)
  RT_WRITE(sc, sc->gdma1_base + GDMA_FWD_CFG,
  (
  GDM_ICS_EN |
  GDM_TCS_EN |
  GDM_UCS_EN |
  GDM_STRPCRC |
  GDM_DST_PORT_CPU << GDM_UFRC_P_SHIFT |
  GDM_DST_PORT_CPU << GDM_BFRC_P_SHIFT |
  GDM_DST_PORT_CPU << GDM_MFRC_P_SHIFT |
  GDM_DST_PORT_CPU << GDM_OFRC_P_SHIFT
  ));
}
