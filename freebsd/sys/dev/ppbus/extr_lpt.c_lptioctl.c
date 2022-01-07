
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
typedef int u_char ;
struct thread {int dummy; } ;
struct lpt_data {int sc_irq; int sc_dev; } ;
struct cdev {struct lpt_data* si_drv1; } ;
typedef int device_t ;
typedef scalar_t__ caddr_t ;


 int ENODEV ;
 int EOPNOTSUPP ;
 int LOG_NOTICE ;

 int LP_ENABLE_EXT ;
 int LP_ENABLE_IRQ ;
 int LP_HAS_IRQ ;
 int device_get_nameunit (int ) ;
 int device_get_parent (int ) ;
 int log (int ,char*,int ,char*,char*) ;
 int ppb_lock (int ) ;
 int ppb_unlock (int ) ;

__attribute__((used)) static int
lptioctl(struct cdev *dev, u_long cmd, caddr_t data, int flags, struct thread *td)
{
 int error = 0;
 struct lpt_data *sc = dev->si_drv1;
 device_t ppbus;
 u_char old_sc_irq;

 switch (cmd) {
 case 128 :
  ppbus = device_get_parent(sc->sc_dev);
  ppb_lock(ppbus);
  if (sc->sc_irq & LP_HAS_IRQ) {
   old_sc_irq = sc->sc_irq;
   switch (*(int*)data) {
   case 0:
    sc->sc_irq &= (~LP_ENABLE_IRQ);
    break;
   case 1:
    sc->sc_irq &= (~LP_ENABLE_EXT);
    sc->sc_irq |= LP_ENABLE_IRQ;
    break;
   case 2:



    sc->sc_irq &= (~LP_ENABLE_IRQ);
    sc->sc_irq |= LP_ENABLE_EXT;
    break;
   case 3:
    sc->sc_irq &= (~LP_ENABLE_EXT);
    break;
   default:
    break;
   }

   if (old_sc_irq != sc->sc_irq )
    log(LOG_NOTICE, "%s: switched to %s %s mode\n",
     device_get_nameunit(sc->sc_dev),
     (sc->sc_irq & LP_ENABLE_IRQ)?
     "interrupt-driven":"polled",
     (sc->sc_irq & LP_ENABLE_EXT)?
     "extended":"standard");
  } else
   error = EOPNOTSUPP;
  ppb_unlock(ppbus);
  break;
 default:
  error = ENODEV;
 }

 return(error);
}
