
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct otus_tx_cmd {int dummy; } ;
struct otus_softc {int sc_cmd_inactive; } ;


 int OTUS_LOCK_ASSERT (struct otus_softc*) ;
 int STAILQ_INSERT_TAIL (int *,struct otus_tx_cmd*,int ) ;
 int next_cmd ;

__attribute__((used)) static void
otus_free_txcmd(struct otus_softc *sc, struct otus_tx_cmd *bf)
{

 OTUS_LOCK_ASSERT(sc);
 STAILQ_INSERT_TAIL(&sc->sc_cmd_inactive, bf, next_cmd);
}
