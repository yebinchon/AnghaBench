
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtwn_softc {int dummy; } ;


 scalar_t__ R92C_DARFRC ;
 int R92C_DARFRC_SIZE ;
 scalar_t__ R92C_RARFRC ;
 int rtwn_write_1 (struct rtwn_softc*,scalar_t__,int) ;

__attribute__((used)) static void
rtwn_mrr_init(struct rtwn_softc *sc)
{
 int i;


 for (i = 0; i < R92C_DARFRC_SIZE; i++) {
  rtwn_write_1(sc, R92C_DARFRC + i, i + 1);
  rtwn_write_1(sc, R92C_RARFRC + i, i + 1);
 }
}
