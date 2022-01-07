
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef union ccb {int dummy; } ccb ;
struct TYPE_2__ {scalar_t__ actlen; scalar_t__ data_len; int (* callback ) (struct umass_softc*,union ccb*,scalar_t__,int ) ;union ccb* ccb; } ;
struct umass_softc {TYPE_1__ sc_transfer; scalar_t__ sc_last_xfer_index; int sc_mtx; } ;


 int MA_OWNED ;
 int STATUS_WIRE_FAILED ;
 int USB_MTX_ASSERT (int *,int ) ;
 int stub1 (struct umass_softc*,union ccb*,scalar_t__,int ) ;

__attribute__((used)) static void
umass_cancel_ccb(struct umass_softc *sc)
{
 union ccb *ccb;

 USB_MTX_ASSERT(&sc->sc_mtx, MA_OWNED);

 ccb = sc->sc_transfer.ccb;
 sc->sc_transfer.ccb = ((void*)0);
 sc->sc_last_xfer_index = 0;

 if (ccb) {
  (sc->sc_transfer.callback)
      (sc, ccb, (sc->sc_transfer.data_len -
      sc->sc_transfer.actlen), STATUS_WIRE_FAILED);
 }
}
