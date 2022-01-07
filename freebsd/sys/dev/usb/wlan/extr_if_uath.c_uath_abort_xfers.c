
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uath_softc {int * sc_xfer; } ;


 int UATH_ASSERT_LOCKED (struct uath_softc*) ;
 int UATH_N_XFERS ;
 int usbd_transfer_stop (int ) ;

__attribute__((used)) static void
uath_abort_xfers(struct uath_softc *sc)
{
 int i;

 UATH_ASSERT_LOCKED(sc);

 for (i = 0; i < UATH_N_XFERS; i++)
  usbd_transfer_stop(sc->sc_xfer[i]);
}
