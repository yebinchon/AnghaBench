
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct otus_softc {int sc_tx_inactive; } ;
struct otus_data {int dummy; } ;


 int OTUS_LOCK_ASSERT (struct otus_softc*) ;
 int STAILQ_INSERT_TAIL (int *,struct otus_data*,int ) ;
 int next ;

__attribute__((used)) static void
otus_freebuf(struct otus_softc *sc, struct otus_data *bf)
{

 OTUS_LOCK_ASSERT(sc);
 STAILQ_INSERT_TAIL(&sc->sc_tx_inactive, bf, next);
}
