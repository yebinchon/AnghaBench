
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct autofs_node {scalar_t__ an_retries; } ;
struct TYPE_2__ {int sc_lock; } ;


 int AUTOFS_DEBUG (char*,...) ;
 int EINTR ;
 int ERESTART ;
 scalar_t__ autofs_retry_attempts ;
 int autofs_retry_delay ;
 TYPE_1__* autofs_softc ;
 int autofs_trigger_one (struct autofs_node*,char const*,int) ;
 int hz ;
 int pause (char*,int) ;
 int sx_xlock (int *) ;
 int sx_xunlock (int *) ;

int
autofs_trigger(struct autofs_node *anp,
    const char *component, int componentlen)
{
 int error;

 for (;;) {
  error = autofs_trigger_one(anp, component, componentlen);
  if (error == 0) {
   anp->an_retries = 0;
   return (0);
  }
  if (error == EINTR || error == ERESTART) {
   AUTOFS_DEBUG("trigger interrupted by signal, "
       "not retrying");
   anp->an_retries = 0;
   return (error);
  }
  anp->an_retries++;
  if (anp->an_retries >= autofs_retry_attempts) {
   AUTOFS_DEBUG("trigger failed %d times; returning "
       "error %d", anp->an_retries, error);
   anp->an_retries = 0;
   return (error);

  }
  AUTOFS_DEBUG("trigger failed with error %d; will retry in "
      "%d seconds, %d attempts left", error, autofs_retry_delay,
      autofs_retry_attempts - anp->an_retries);
  sx_xunlock(&autofs_softc->sc_lock);
  pause("autofs_retry", autofs_retry_delay * hz);
  sx_xlock(&autofs_softc->sc_lock);
 }
}
