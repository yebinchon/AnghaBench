
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ath_softc {int sc_txqsetup; int sc_txtask; TYPE_1__* sc_cabq; } ;
struct TYPE_2__ {int axq_qnum; } ;


 int TASK_INIT (int *,int ,int ,struct ath_softc*) ;
 int ath_tx_proc ;
 int ath_tx_proc_q0 ;
 int ath_tx_proc_q0123 ;

void
ath_legacy_attach_comp_func(struct ath_softc *sc)
{






 switch (sc->sc_txqsetup &~ (1<<sc->sc_cabq->axq_qnum)) {
 case 0x01:
  TASK_INIT(&sc->sc_txtask, 0, ath_tx_proc_q0, sc);
  break;
 case 0x0f:
  TASK_INIT(&sc->sc_txtask, 0, ath_tx_proc_q0123, sc);
  break;
 default:
  TASK_INIT(&sc->sc_txtask, 0, ath_tx_proc, sc);
  break;
 }
}
