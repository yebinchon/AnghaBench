
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtwn_softc {int cmdq_task; } ;


 int RTWN_CMDQ_LOCK_INIT (struct rtwn_softc*) ;
 int TASK_INIT (int *,int ,int ,struct rtwn_softc*) ;
 int rtwn_cmdq_cb ;

void
rtwn_cmdq_init(struct rtwn_softc *sc)
{
 RTWN_CMDQ_LOCK_INIT(sc);
 TASK_INIT(&sc->cmdq_task, 0, rtwn_cmdq_cb, sc);
}
