
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ifnet {int if_xname; int if_vnet; struct bridge_softc* if_bridge; } ;
struct bridge_softc {TYPE_1__* sc_ifp; } ;
struct TYPE_2__ {int if_xname; } ;


 int CURVNET_RESTORE () ;
 int CURVNET_SET (int ) ;
 int LOG_NOTICE ;
 scalar_t__ V_log_stp ;
 int log (int ,char*,int ,char const*,int ) ;

__attribute__((used)) static void
bridge_state_change(struct ifnet *ifp, int state)
{
 struct bridge_softc *sc = ifp->if_bridge;
 static const char *stpstates[] = {
  "disabled",
  "listening",
  "learning",
  "forwarding",
  "blocking",
  "discarding"
 };

 CURVNET_SET(ifp->if_vnet);
 if (V_log_stp)
  log(LOG_NOTICE, "%s: state changed to %s on %s\n",
      sc->sc_ifp->if_xname, stpstates[state], ifp->if_xname);
 CURVNET_RESTORE();
}
