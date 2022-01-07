
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct lpt_data {int sc_state; uintptr_t sc_flags; int sc_irq; scalar_t__ sc_primed; int sc_control; int sc_backoff; int sc_timer; scalar_t__ sc_xfercnt; int sc_dev; } ;
struct cdev {scalar_t__ si_drv2; struct lpt_data* si_drv1; } ;
typedef int device_t ;


 int DELAY (int) ;
 int EBUSY ;
 int ENXIO ;
 scalar_t__ EWOULDBLOCK ;
 int LPC_AUTOL ;
 int LPC_ENA ;
 int LPC_NINIT ;
 int LPC_SEL ;
 int LPINITRDY ;
 int LPPRI ;
 int LPS_NBSY ;
 int LPS_NERR ;
 int LPS_OUT ;
 int LPS_SEL ;
 int LPTINIT ;
 int LPTOUTINITIAL ;
 int LP_AUTOLF ;
 int LP_BYPASS ;
 int LP_ENABLE_IRQ ;
 int LP_NO_PRIME ;
 int LP_PRIMEOPEN ;
 int LP_USE_IRQ ;
 int OPEN ;
 int PCATCH ;
 int PPB_INTR ;
 int PPB_WAIT ;
 int TOUT ;
 int callout_reset (int *,int,int ,struct lpt_data*) ;
 int device_get_nameunit (int ) ;
 int device_get_parent (int ) ;
 int hz ;
 int lprintf (char*) ;
 int lpt_release_ppbus (int ) ;
 int lpt_request_ppbus (int ,int) ;
 int lptout ;
 int ppb_lock (int ) ;
 int ppb_rstr (int ) ;
 scalar_t__ ppb_sleep (int ,int ,int,char*,int) ;
 int ppb_unlock (int ) ;
 int ppb_wctr (int ,int) ;

__attribute__((used)) static int
lptopen(struct cdev *dev, int flags, int fmt, struct thread *td)
{
 int trys, err;
 struct lpt_data *sc = dev->si_drv1;
 device_t lptdev;
 device_t ppbus;

 if (!sc)
  return (ENXIO);

 lptdev = sc->sc_dev;
 ppbus = device_get_parent(lptdev);

 ppb_lock(ppbus);
 if (sc->sc_state) {
  lprintf(("%s: still open %x\n", device_get_nameunit(lptdev),
      sc->sc_state));
  ppb_unlock(ppbus);
  return(EBUSY);
 } else
  sc->sc_state |= LPTINIT;

 sc->sc_flags = (uintptr_t)dev->si_drv2;


 if (sc->sc_flags & LP_BYPASS) {
  sc->sc_state = OPEN;
  ppb_unlock(ppbus);
  return(0);
 }


 if ((err = lpt_request_ppbus(lptdev, PPB_WAIT|PPB_INTR)) != 0) {

  sc->sc_state = 0;
  ppb_unlock(ppbus);
  return (err);
 }

 lprintf(("%s flags 0x%x\n", device_get_nameunit(lptdev),
     sc->sc_flags));



 if (sc->sc_irq & LP_ENABLE_IRQ)
  sc->sc_irq |= LP_USE_IRQ;
 else
  sc->sc_irq &= ~LP_USE_IRQ;


 if ((sc->sc_flags & LP_NO_PRIME) == 0) {
  if ((sc->sc_flags & LP_PRIMEOPEN) || sc->sc_primed == 0) {
   ppb_wctr(ppbus, 0);
   sc->sc_primed++;
   DELAY(500);
  }
 }

 ppb_wctr(ppbus, LPC_SEL|LPC_NINIT);


 trys = 0;
 do {

  if (trys++ >= LPINITRDY*4) {
   lprintf(("status %x\n", ppb_rstr(ppbus)));

   lpt_release_ppbus(lptdev);
   sc->sc_state = 0;
   ppb_unlock(ppbus);
   return (EBUSY);
  }


  if (ppb_sleep(ppbus, lptdev, LPPRI | PCATCH, "lptinit",
      hz / 4) != EWOULDBLOCK) {
   lpt_release_ppbus(lptdev);
   sc->sc_state = 0;
   ppb_unlock(ppbus);
   return (EBUSY);
  }


 } while ((ppb_rstr(ppbus) &
   (LPS_SEL|LPS_OUT|LPS_NBSY|LPS_NERR)) !=
     (LPS_SEL|LPS_NBSY|LPS_NERR));

 sc->sc_control = LPC_SEL|LPC_NINIT;
 if (sc->sc_flags & LP_AUTOLF)
  sc->sc_control |= LPC_AUTOL;


 if (sc->sc_irq & LP_USE_IRQ)
  sc->sc_control |= LPC_ENA;

 ppb_wctr(ppbus, sc->sc_control);

 sc->sc_state &= ~LPTINIT;
 sc->sc_state |= OPEN;
 sc->sc_xfercnt = 0;


 lprintf(("irq %x\n", sc->sc_irq));
 if (sc->sc_irq & LP_USE_IRQ) {
  sc->sc_state |= TOUT;
  sc->sc_backoff = hz / LPTOUTINITIAL;
  callout_reset(&sc->sc_timer, sc->sc_backoff, lptout, sc);
 }


 lpt_release_ppbus(lptdev);
 ppb_unlock(ppbus);

 lprintf(("opened.\n"));
 return(0);
}
