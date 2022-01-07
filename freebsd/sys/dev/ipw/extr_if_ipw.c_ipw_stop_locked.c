
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipw_softc {int flags; scalar_t__ sc_tx_timer; int * stbd_list; int sc_wdtimer; } ;


 int CSR_WRITE_4 (struct ipw_softc*,int ,int ) ;
 int IPW_CSR_RST ;
 int IPW_FLAG_RUNNING ;
 int IPW_LOCK_ASSERT (struct ipw_softc*) ;
 int IPW_NTBD ;
 int IPW_RST_SW_RESET ;
 int callout_stop (int *) ;
 int ipw_release_sbd (struct ipw_softc*,int *) ;
 int ipw_stop_master (struct ipw_softc*) ;

__attribute__((used)) static void
ipw_stop_locked(struct ipw_softc *sc)
{
 int i;

 IPW_LOCK_ASSERT(sc);

 callout_stop(&sc->sc_wdtimer);
 ipw_stop_master(sc);

 CSR_WRITE_4(sc, IPW_CSR_RST, IPW_RST_SW_RESET);




 for (i = 0; i < IPW_NTBD; i++)
  ipw_release_sbd(sc, &sc->stbd_list[i]);

 sc->sc_tx_timer = 0;
 sc->flags &= ~IPW_FLAG_RUNNING;
}
