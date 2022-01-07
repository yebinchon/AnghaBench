
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fxp_softc {scalar_t__ rx_idle_secs; int stat_ch; int * miibus; int ifp; } ;
typedef int if_t ;


 scalar_t__ CSR_READ_1 (struct fxp_softc*,int ) ;
 int FXP_CSR_SCB_COMMAND ;
 int FXP_LOCK_ASSERT (struct fxp_softc*,int ) ;
 scalar_t__ FXP_MAX_RX_IDLE ;
 int FXP_SCB_COMMAND_CU_DUMPRESET ;
 int IFF_DRV_RUNNING ;
 int MA_OWNED ;
 int callout_reset (int *,int ,void (*) (void*),struct fxp_softc*) ;
 int device_get_softc (int *) ;
 int fxp_init_body (struct fxp_softc*,int) ;
 int fxp_scb_cmd (struct fxp_softc*,int ) ;
 int fxp_txeof (struct fxp_softc*) ;
 int fxp_update_stats (struct fxp_softc*) ;
 int fxp_watchdog (struct fxp_softc*) ;
 int hz ;
 int if_getdrvflags (int ) ;
 int if_setdrvflagbits (int ,int ,int) ;
 int mii_tick (int ) ;

__attribute__((used)) static void
fxp_tick(void *xsc)
{
 struct fxp_softc *sc = xsc;
 if_t ifp = sc->ifp;

 FXP_LOCK_ASSERT(sc, MA_OWNED);


 fxp_update_stats(sc);
 fxp_txeof(sc);
 if (sc->rx_idle_secs > FXP_MAX_RX_IDLE) {
  sc->rx_idle_secs = 0;
  if ((if_getdrvflags(ifp) & IFF_DRV_RUNNING) != 0) {
   if_setdrvflagbits(ifp, 0, IFF_DRV_RUNNING);
   fxp_init_body(sc, 1);
  }
  return;
 }




 if (CSR_READ_1(sc, FXP_CSR_SCB_COMMAND) == 0) {



  fxp_scb_cmd(sc, FXP_SCB_COMMAND_CU_DUMPRESET);
 }
 if (sc->miibus != ((void*)0))
  mii_tick(device_get_softc(sc->miibus));




 fxp_watchdog(sc);




 callout_reset(&sc->stat_ch, hz, fxp_tick, sc);
}
