
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct lpt_data {int sc_flags; int sc_state; int sc_irq; scalar_t__ sc_xfercnt; int sc_timer; int sc_dev; } ;
struct cdev {struct lpt_data* si_drv1; } ;
typedef int device_t ;


 scalar_t__ EWOULDBLOCK ;
 int INTERRUPTED ;
 int LPC_NINIT ;
 int LPPRI ;
 int LPS_NBSY ;
 int LPS_NERR ;
 int LPS_OUT ;
 int LPS_SEL ;
 int LP_BYPASS ;
 int LP_USE_IRQ ;
 int OPEN ;
 int PCATCH ;
 int PPB_INTR ;
 int PPB_WAIT ;
 int callout_stop (int *) ;
 int device_get_parent (int ) ;
 int hz ;
 int lprintf (char*) ;
 int lpt_release_ppbus (int ) ;
 int lpt_request_ppbus (int ,int) ;
 int ppb_lock (int ) ;
 int ppb_rstr (int ) ;
 scalar_t__ ppb_sleep (int ,int ,int,char*,int ) ;
 int ppb_unlock (int ) ;
 int ppb_wctr (int ,int ) ;

__attribute__((used)) static int
lptclose(struct cdev *dev, int flags, int fmt, struct thread *td)
{
 struct lpt_data *sc = dev->si_drv1;
 device_t lptdev = sc->sc_dev;
 device_t ppbus = device_get_parent(lptdev);
 int err;

 ppb_lock(ppbus);
 if (sc->sc_flags & LP_BYPASS)
  goto end_close;

 if ((err = lpt_request_ppbus(lptdev, PPB_WAIT|PPB_INTR)) != 0) {
  ppb_unlock(ppbus);
  return (err);
 }


 if ((!(sc->sc_state & INTERRUPTED)) && (sc->sc_irq & LP_USE_IRQ))
  while ((ppb_rstr(ppbus) &
   (LPS_SEL|LPS_OUT|LPS_NBSY|LPS_NERR)) !=
   (LPS_SEL|LPS_NBSY|LPS_NERR) || sc->sc_xfercnt)

   if (ppb_sleep(ppbus, lptdev, LPPRI | PCATCH, "lpclose",
       hz) != EWOULDBLOCK)
    break;

 sc->sc_state &= ~OPEN;
 callout_stop(&sc->sc_timer);
 ppb_wctr(ppbus, LPC_NINIT);




 lpt_release_ppbus(lptdev);

end_close:
 sc->sc_state = 0;
 sc->sc_xfercnt = 0;
 ppb_unlock(ppbus);
 lprintf(("closed.\n"));
 return(0);
}
