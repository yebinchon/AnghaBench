
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int sc_lock; int sc_sessions; } ;


 int EBUSY ;
 int TAILQ_EMPTY (int *) ;
 TYPE_1__* sc ;
 int sx_slock (int *) ;
 int sx_sunlock (int *) ;

__attribute__((used)) static int
iscsi_quiesce(void)
{
 sx_slock(&sc->sc_lock);
 if (!TAILQ_EMPTY(&sc->sc_sessions)) {
  sx_sunlock(&sc->sc_lock);
  return (EBUSY);
 }
 sx_sunlock(&sc->sc_lock);
 return (0);
}
