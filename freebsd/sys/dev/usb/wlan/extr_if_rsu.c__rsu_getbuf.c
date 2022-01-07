
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rsu_softc {int sc_tx_inactive; } ;
struct rsu_data {int dummy; } ;


 struct rsu_data* STAILQ_FIRST (int *) ;
 int STAILQ_REMOVE_HEAD (int *,int ) ;
 int next ;

__attribute__((used)) static struct rsu_data *
_rsu_getbuf(struct rsu_softc *sc)
{
 struct rsu_data *bf;

 bf = STAILQ_FIRST(&sc->sc_tx_inactive);
 if (bf != ((void*)0))
  STAILQ_REMOVE_HEAD(&sc->sc_tx_inactive, next);
 else
  bf = ((void*)0);
 return (bf);
}
