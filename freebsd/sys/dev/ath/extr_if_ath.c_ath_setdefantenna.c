
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_int ;
struct TYPE_2__ {int ast_ant_defswitch; } ;
struct ath_softc {scalar_t__ sc_rxotherant; int sc_defant; TYPE_1__ sc_stats; struct ath_hal* sc_ah; } ;
struct ath_hal {int dummy; } ;


 int ath_hal_setdefantenna (struct ath_hal*,int ) ;

void
ath_setdefantenna(struct ath_softc *sc, u_int antenna)
{
 struct ath_hal *ah = sc->sc_ah;


 ath_hal_setdefantenna(ah, antenna);
 if (sc->sc_defant != antenna)
  sc->sc_stats.ast_ant_defswitch++;
 sc->sc_defant = antenna;
 sc->sc_rxotherant = 0;
}
