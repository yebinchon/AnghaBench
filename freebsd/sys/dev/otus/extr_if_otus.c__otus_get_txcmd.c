
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct otus_tx_cmd {int dummy; } ;
struct otus_softc {int sc_cmd_inactive; } ;


 struct otus_tx_cmd* STAILQ_FIRST (int *) ;
 int STAILQ_REMOVE_HEAD (int *,int ) ;
 int next_cmd ;

__attribute__((used)) static struct otus_tx_cmd *
_otus_get_txcmd(struct otus_softc *sc)
{
 struct otus_tx_cmd *bf;

 bf = STAILQ_FIRST(&sc->sc_cmd_inactive);
 if (bf != ((void*)0))
  STAILQ_REMOVE_HEAD(&sc->sc_cmd_inactive, next_cmd);
 else
  bf = ((void*)0);
 return (bf);
}
