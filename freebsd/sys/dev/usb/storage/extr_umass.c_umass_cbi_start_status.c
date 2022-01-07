
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef union ccb {int dummy; } ccb ;
struct TYPE_2__ {scalar_t__ actlen; scalar_t__ data_len; int (* callback ) (struct umass_softc*,union ccb*,scalar_t__,int ) ;union ccb* ccb; } ;
struct umass_softc {TYPE_1__ sc_transfer; int sc_last_xfer_index; scalar_t__* sc_xfer; } ;


 int STATUS_CMD_UNKNOWN ;
 int UMASS_T_CBI_COMMAND ;
 size_t UMASS_T_CBI_STATUS ;
 int stub1 (struct umass_softc*,union ccb*,scalar_t__,int ) ;
 int umass_transfer_start (struct umass_softc*,size_t) ;

__attribute__((used)) static void
umass_cbi_start_status(struct umass_softc *sc)
{
 if (sc->sc_xfer[UMASS_T_CBI_STATUS]) {
  umass_transfer_start(sc, UMASS_T_CBI_STATUS);
 } else {
  union ccb *ccb = sc->sc_transfer.ccb;

  sc->sc_transfer.ccb = ((void*)0);

  sc->sc_last_xfer_index = UMASS_T_CBI_COMMAND;

  (sc->sc_transfer.callback)
      (sc, ccb, (sc->sc_transfer.data_len -
      sc->sc_transfer.actlen), STATUS_CMD_UNKNOWN);
 }
}
