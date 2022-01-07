
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ucom_softc {TYPE_1__* sc_callback; int sc_tty; } ;
struct consdev {int dummy; } ;
struct TYPE_2__ {int (* ucom_poll ) (struct ucom_softc*) ;} ;


 int UCOM_CONS_BUFSIZE ;
 int UCOM_MTX_LOCK (struct ucom_softc*) ;
 int UCOM_MTX_UNLOCK (struct ucom_softc*) ;
 scalar_t__ USB_IN_POLLING_MODE_FUNC () ;
 int stub1 (struct ucom_softc*) ;
 struct ucom_softc* ucom_cons_softc ;
 int* ucom_cons_tx_buf ;
 size_t ucom_cons_tx_high ;
 int ucom_cons_tx_low ;
 int ucom_outwakeup (int ) ;

__attribute__((used)) static void
ucom_cnputc(struct consdev *cd, int c)
{
 struct ucom_softc *sc = ucom_cons_softc;
 unsigned int temp;

 if (sc == ((void*)0))
  return;

 repeat:

 UCOM_MTX_LOCK(sc);



 temp = (UCOM_CONS_BUFSIZE - 1) - ucom_cons_tx_high + ucom_cons_tx_low;
 temp %= UCOM_CONS_BUFSIZE;

 if (temp) {
  ucom_cons_tx_buf[ucom_cons_tx_high] = c;
  ucom_cons_tx_high ++;
  ucom_cons_tx_high %= UCOM_CONS_BUFSIZE;
 }


 ucom_outwakeup(sc->sc_tty);

 UCOM_MTX_UNLOCK(sc);


 if (USB_IN_POLLING_MODE_FUNC() && sc->sc_callback->ucom_poll) {
  (sc->sc_callback->ucom_poll) (sc);

  if (temp == 0)
   goto repeat;
 }
}
