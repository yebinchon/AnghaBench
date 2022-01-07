
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtwn_softc {int dummy; } ;


 int RTWN_CMDQ_LOCK_DESTROY (struct rtwn_softc*) ;
 scalar_t__ RTWN_CMDQ_LOCK_INITIALIZED (struct rtwn_softc*) ;

void
rtwn_cmdq_destroy(struct rtwn_softc *sc)
{
 if (RTWN_CMDQ_LOCK_INITIALIZED(sc))
  RTWN_CMDQ_LOCK_DESTROY(sc);
}
