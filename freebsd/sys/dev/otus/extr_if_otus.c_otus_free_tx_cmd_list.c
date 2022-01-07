
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct otus_softc {int sc_cmd; int sc_cmd_waiting; int sc_cmd_pending; int sc_cmd_inactive; int sc_cmd_active; } ;


 int OTUS_CMD_LIST_COUNT ;
 int STAILQ_INIT (int *) ;
 int otus_free_cmd_list (struct otus_softc*,int ,int ) ;

__attribute__((used)) static void
otus_free_tx_cmd_list(struct otus_softc *sc)
{





 STAILQ_INIT(&sc->sc_cmd_active);
 STAILQ_INIT(&sc->sc_cmd_inactive);
 STAILQ_INIT(&sc->sc_cmd_pending);
 STAILQ_INIT(&sc->sc_cmd_waiting);

 otus_free_cmd_list(sc, sc->sc_cmd, OTUS_CMD_LIST_COUNT);
}
