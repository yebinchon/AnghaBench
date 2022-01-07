
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwm_softc {int sc_flags; scalar_t__ sc_time_event_end_ticks; scalar_t__ sc_time_event_duration; scalar_t__ sc_time_event_uid; } ;


 int IWM_FLAG_TE_ACTIVE ;

__attribute__((used)) static void
iwm_mvm_te_clear_data(struct iwm_softc *sc)
{
 sc->sc_time_event_uid = 0;
 sc->sc_time_event_duration = 0;
 sc->sc_time_event_end_ticks = 0;
 sc->sc_flags &= ~IWM_FLAG_TE_ACTIVE;
}
