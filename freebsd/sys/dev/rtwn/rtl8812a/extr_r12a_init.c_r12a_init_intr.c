
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtwn_softc {int dummy; } ;


 int R88E_HIMR ;
 int R88E_HIMRE ;
 int rtwn_write_4 (struct rtwn_softc*,int ,int ) ;

void
r12a_init_intr(struct rtwn_softc *sc)
{
 rtwn_write_4(sc, R88E_HIMR, 0);
 rtwn_write_4(sc, R88E_HIMRE, 0);
}
