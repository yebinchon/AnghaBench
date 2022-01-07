
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct carp_softc {int sc_state; int sc_vhid; TYPE_1__* sc_carpdev; } ;
struct TYPE_2__ {char* if_xname; } ;


 int CARP_LOCK_ASSERT (struct carp_softc*) ;
 int CARP_LOG (char*,char*,char const*,char const*,char const*) ;
 char const* CARP_STATES ;
 int IFNAMSIZ ;
 int devctl_notify (char*,char*,char const*,int *) ;
 int snprintf (char*,int,char*,int,char*) ;

__attribute__((used)) static void
carp_set_state(struct carp_softc *sc, int state, const char *reason)
{

 CARP_LOCK_ASSERT(sc);

 if (sc->sc_state != state) {
  const char *carp_states[] = { CARP_STATES };
  char subsys[IFNAMSIZ+5];

  snprintf(subsys, IFNAMSIZ+5, "%u@%s", sc->sc_vhid,
      sc->sc_carpdev->if_xname);

  CARP_LOG("%s: %s -> %s (%s)\n", subsys,
      carp_states[sc->sc_state], carp_states[state], reason);

  sc->sc_state = state;

  devctl_notify("CARP", subsys, carp_states[state], ((void*)0));
 }
}
