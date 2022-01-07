
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_2__ {int ast_bstuck; } ;
struct ath_softc {scalar_t__ sc_bmisscount; TYPE_1__ sc_stats; int sc_dev; int sc_alq; int sc_ah; } ;


 int ATH_ALQ_STUCK_BEACON ;
 int ATH_RESET_NOLOSS ;
 scalar_t__ ath_hal_gethangstate (int ,int,scalar_t__*) ;
 int ath_reset (struct ath_softc*,int ) ;
 int device_printf (int ,char*,scalar_t__) ;
 scalar_t__ if_ath_alq_checkdebug (int *,int ) ;
 int if_ath_alq_post (int *,int ,int ,int *) ;

__attribute__((used)) static void
ath_bstuck_proc(void *arg, int pending)
{
 struct ath_softc *sc = arg;
 uint32_t hangs = 0;

 if (ath_hal_gethangstate(sc->sc_ah, 0xff, &hangs) && hangs != 0)
  device_printf(sc->sc_dev, "bb hang detected (0x%x)\n", hangs);






 device_printf(sc->sc_dev, "stuck beacon; resetting (bmiss count %u)\n",
     sc->sc_bmisscount);
 sc->sc_stats.ast_bstuck++;




 ath_reset(sc, ATH_RESET_NOLOSS);
}
