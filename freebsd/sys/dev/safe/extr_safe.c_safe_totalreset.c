
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct safe_softc {int dummy; } ;


 int safe_cleanchip (struct safe_softc*) ;
 int safe_init_board (struct safe_softc*) ;
 int safe_reset_board (struct safe_softc*) ;

__attribute__((used)) static void
safe_totalreset(struct safe_softc *sc)
{
 safe_reset_board(sc);
 safe_init_board(sc);
 safe_cleanchip(sc);
}
