
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct urtw_softc {int sc_flags; int * sc_xfer; } ;


 int URTW_8187B_N_XFERS ;
 int URTW_8187L_N_XFERS ;
 int URTW_ASSERT_LOCKED (struct urtw_softc*) ;
 int URTW_RTL8187B ;
 int usbd_transfer_stop (int ) ;

__attribute__((used)) static void
urtw_abort_xfers(struct urtw_softc *sc)
{
 int i, max;

 URTW_ASSERT_LOCKED(sc);

 max = (sc->sc_flags & URTW_RTL8187B) ? URTW_8187B_N_XFERS :
     URTW_8187L_N_XFERS;


 for (i = 0; i < max; i++)
  usbd_transfer_stop(sc->sc_xfer[i]);
}
