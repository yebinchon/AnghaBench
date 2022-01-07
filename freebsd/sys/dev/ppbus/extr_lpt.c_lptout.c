
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lpt_data {int sc_state; int sc_backoff; scalar_t__ sc_xfercnt; int sc_timer; int sc_dev; } ;
typedef int device_t ;


 int EERROR ;
 int LPTOUTMAX ;
 int OBUSY ;
 int OPEN ;
 int TOUT ;
 int callout_reset (int *,int,void (*) (void*),struct lpt_data*) ;
 int device_get_parent (int ) ;
 int hz ;
 int lprintf (char*) ;
 int lptintr (struct lpt_data*) ;
 int ppb_assert_locked (int ) ;
 int ppb_rstr (int ) ;
 int wakeup (int ) ;

__attribute__((used)) static void
lptout(void *arg)
{
 struct lpt_data *sc = arg;
 device_t dev = sc->sc_dev;
 device_t ppbus;

 ppbus = device_get_parent(dev);
 ppb_assert_locked(ppbus);
 lprintf(("T %x ", ppb_rstr(ppbus)));
 if (sc->sc_state & OPEN) {
  sc->sc_backoff++;
  if (sc->sc_backoff > hz/LPTOUTMAX)
   sc->sc_backoff = hz/LPTOUTMAX;
  callout_reset(&sc->sc_timer, sc->sc_backoff, lptout, sc);
 } else
  sc->sc_state &= ~TOUT;

 if (sc->sc_state & EERROR)
  sc->sc_state &= ~EERROR;




 if (sc->sc_xfercnt) {
  lptintr(sc);
 } else {
  sc->sc_state &= ~OBUSY;
  wakeup(dev);
 }
}
