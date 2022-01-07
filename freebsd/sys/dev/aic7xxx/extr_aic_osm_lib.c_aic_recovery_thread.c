
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct aic_softc {int flags; TYPE_1__* platform_data; int timedout_scbs; } ;
struct TYPE_2__ {int * recovery_thread; int mtx; } ;


 int AIC_SHUTDOWN_RECOVERY ;
 scalar_t__ LIST_EMPTY (int *) ;
 int PUSER ;
 int aic_lock (struct aic_softc*) ;
 int aic_recover_commands (struct aic_softc*) ;
 int aic_unlock (struct aic_softc*) ;
 int kproc_exit (int ) ;
 int msleep (struct aic_softc*,int *,int ,char*,int ) ;
 int wakeup (TYPE_1__*) ;

__attribute__((used)) static void
aic_recovery_thread(void *arg)
{
 struct aic_softc *aic;

 aic = (struct aic_softc *)arg;
 aic_lock(aic);
 for (;;) {

  if (LIST_EMPTY(&aic->timedout_scbs) != 0
   && (aic->flags & AIC_SHUTDOWN_RECOVERY) == 0)
   msleep(aic, &aic->platform_data->mtx, PUSER, "idle", 0);

  if ((aic->flags & AIC_SHUTDOWN_RECOVERY) != 0)
   break;

  aic_recover_commands(aic);
 }
 aic->platform_data->recovery_thread = ((void*)0);
 wakeup(aic->platform_data);
 aic_unlock(aic);
 kproc_exit(0);
}
