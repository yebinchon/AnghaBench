
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct otus_softc {int * sc_cmd; int sc_cmd_inactive; int sc_cmd_waiting; int sc_cmd_pending; int sc_cmd_active; } ;


 int OTUS_CMD_LIST_COUNT ;
 int OTUS_MAX_TXCMDSZ ;
 int STAILQ_INIT (int *) ;
 int STAILQ_INSERT_HEAD (int *,int *,int ) ;
 int next_cmd ;
 int otus_alloc_cmd_list (struct otus_softc*,int *,int,int ) ;

__attribute__((used)) static int
otus_alloc_tx_cmd_list(struct otus_softc *sc)
{
 int error, i;

 error = otus_alloc_cmd_list(sc, sc->sc_cmd, OTUS_CMD_LIST_COUNT,
     OTUS_MAX_TXCMDSZ);
 if (error != 0)
  return (error);

 STAILQ_INIT(&sc->sc_cmd_active);
 STAILQ_INIT(&sc->sc_cmd_inactive);
 STAILQ_INIT(&sc->sc_cmd_pending);
 STAILQ_INIT(&sc->sc_cmd_waiting);

 for (i = 0; i < OTUS_CMD_LIST_COUNT; i++)
  STAILQ_INSERT_HEAD(&sc->sc_cmd_inactive, &sc->sc_cmd[i],
      next_cmd);

 return (0);
}
