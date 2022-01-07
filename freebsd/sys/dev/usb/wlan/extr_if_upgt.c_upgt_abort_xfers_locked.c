
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct upgt_softc {int * sc_xfer; } ;


 int UPGT_ASSERT_LOCKED (struct upgt_softc*) ;
 int UPGT_N_XFERS ;
 int usbd_transfer_stop (int ) ;

__attribute__((used)) static void
upgt_abort_xfers_locked(struct upgt_softc *sc)
{
 int i;

 UPGT_ASSERT_LOCKED(sc);

 for (i = 0; i < UPGT_N_XFERS; i++)
  usbd_transfer_stop(sc->sc_xfer[i]);
}
