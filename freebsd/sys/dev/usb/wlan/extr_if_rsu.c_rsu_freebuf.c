
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rsu_softc {int sc_tx_inactive; } ;
struct rsu_data {int dummy; } ;


 int RSU_ASSERT_LOCKED (struct rsu_softc*) ;
 int STAILQ_INSERT_TAIL (int *,struct rsu_data*,int ) ;
 int next ;

__attribute__((used)) static void
rsu_freebuf(struct rsu_softc *sc, struct rsu_data *bf)
{

 RSU_ASSERT_LOCKED(sc);
 STAILQ_INSERT_TAIL(&sc->sc_tx_inactive, bf, next);
}
