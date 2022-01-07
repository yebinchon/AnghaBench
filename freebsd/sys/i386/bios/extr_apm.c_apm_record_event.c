
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u_int ;
struct apm_softc {int sc_flags; size_t event_count; scalar_t__* event_filter; size_t event_ptr; int sc_rsel; struct apm_event_info* event_list; } ;
struct apm_event_info {size_t type; scalar_t__ index; } ;


 size_t APM_NEVENTS ;
 int PZERO ;
 int SCFLAG_OCTL ;
 int SCFLAG_OPEN ;
 scalar_t__ apm_evindex ;
 int selwakeuppri (int *,int ) ;

__attribute__((used)) static int
apm_record_event(struct apm_softc *sc, u_int event_type)
{
 struct apm_event_info *evp;

 if ((sc->sc_flags & SCFLAG_OPEN) == 0)
  return 1;
 if (sc->event_count == APM_NEVENTS)
  return 1;
 if (sc->event_filter[event_type] == 0)
  return 1;
 evp = &sc->event_list[sc->event_ptr];
 sc->event_count++;
 sc->event_ptr++;
 sc->event_ptr %= APM_NEVENTS;
 evp->type = event_type;
 evp->index = ++apm_evindex;
 selwakeuppri(&sc->sc_rsel, PZERO);
 return (sc->sc_flags & SCFLAG_OCTL) ? 0 : 1;
}
