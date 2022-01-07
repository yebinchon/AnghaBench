
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwm_softc {int sc_wantresp; } ;
struct iwm_host_cmd {int flags; } ;


 int IWM_CMD_SYNC ;
 int IWM_CMD_WANT_SKB ;
 int KASSERT (int,char*) ;
 int wakeup (int*) ;

void
iwm_free_resp(struct iwm_softc *sc, struct iwm_host_cmd *hcmd)
{
 KASSERT(sc->sc_wantresp != -1, ("already freed"));
 KASSERT((hcmd->flags & (IWM_CMD_WANT_SKB|IWM_CMD_SYNC))
     == (IWM_CMD_WANT_SKB|IWM_CMD_SYNC), ("invalid flags"));
 sc->sc_wantresp = -1;
 wakeup(&sc->sc_wantresp);
}
