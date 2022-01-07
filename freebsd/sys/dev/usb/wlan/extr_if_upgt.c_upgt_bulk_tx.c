
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct upgt_softc {int * sc_xfer; int sc_tx_pending; } ;
struct upgt_data {int dummy; } ;


 int STAILQ_INSERT_TAIL (int *,struct upgt_data*,int ) ;
 int UPGT_ASSERT_LOCKED (struct upgt_softc*) ;
 size_t UPGT_BULK_TX ;
 int UPGT_STAT_INC (struct upgt_softc*,int ) ;
 int next ;
 int st_tx_pending ;
 int usbd_transfer_start (int ) ;

__attribute__((used)) static void
upgt_bulk_tx(struct upgt_softc *sc, struct upgt_data *data)
{

 UPGT_ASSERT_LOCKED(sc);

 STAILQ_INSERT_TAIL(&sc->sc_tx_pending, data, next);
 UPGT_STAT_INC(sc, st_tx_pending);
 usbd_transfer_start(sc->sc_xfer[UPGT_BULK_TX]);
}
