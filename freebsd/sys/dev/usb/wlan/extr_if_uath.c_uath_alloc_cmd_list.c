
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct uath_softc {int sc_cmd_inactive; scalar_t__ sc_cmd_dma_buf; int sc_cmd_waiting; int sc_cmd_pending; int sc_cmd_active; } ;
struct uath_cmd {int msgid; int * buf; struct uath_softc* sc; } ;


 int STAILQ_INIT (int *) ;
 int STAILQ_INSERT_TAIL (int *,struct uath_cmd*,int ) ;
 int UATH_CMD_LIST_COUNT ;
 int UATH_MAX_CMDSZ ;
 int UATH_STAT_INC (struct uath_softc*,int ) ;
 int next ;
 int st_cmd_inactive ;

__attribute__((used)) static int
uath_alloc_cmd_list(struct uath_softc *sc, struct uath_cmd cmds[])
{
 int i;

 STAILQ_INIT(&sc->sc_cmd_active);
 STAILQ_INIT(&sc->sc_cmd_pending);
 STAILQ_INIT(&sc->sc_cmd_waiting);
 STAILQ_INIT(&sc->sc_cmd_inactive);

 for (i = 0; i != UATH_CMD_LIST_COUNT; i++) {
  struct uath_cmd *cmd = &cmds[i];

  cmd->sc = sc;
  cmd->msgid = i;
  cmd->buf = ((uint8_t *)sc->sc_cmd_dma_buf) +
      (i * UATH_MAX_CMDSZ);
  STAILQ_INSERT_TAIL(&sc->sc_cmd_inactive, cmd, next);
  UATH_STAT_INC(sc, st_cmd_inactive);
 }
 return (0);
}
