
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ubsec_softc {int dummy; } ;


 int ubsec_cleanchip (struct ubsec_softc*) ;
 int ubsec_init_board (struct ubsec_softc*) ;
 int ubsec_reset_board (struct ubsec_softc*) ;

__attribute__((used)) static void
ubsec_totalreset(struct ubsec_softc *sc)
{
 ubsec_reset_board(sc);
 ubsec_init_board(sc);
 ubsec_cleanchip(sc);
}
