
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ums_softc {int sc_pollrate; int ** sc_xfer; } ;


 int DPRINTF (char*,int) ;
 size_t UMS_INTR_DT ;
 int usbd_transfer_start (int *) ;
 int usbd_transfer_stop (int *) ;
 int usbd_xfer_set_interval (int *,int) ;

__attribute__((used)) static void
ums_start_rx(struct ums_softc *sc)
{
 int rate;


 rate = sc->sc_pollrate;

 if (rate > 1000)
  rate = 1000;

 if ((rate > 0) && (sc->sc_xfer[UMS_INTR_DT] != ((void*)0))) {
  DPRINTF("Setting pollrate = %d\n", rate);

  usbd_transfer_stop(sc->sc_xfer[UMS_INTR_DT]);

  usbd_xfer_set_interval(sc->sc_xfer[UMS_INTR_DT], 1000 / rate);

  sc->sc_pollrate = 0;
 }

 usbd_transfer_start(sc->sc_xfer[UMS_INTR_DT]);
}
