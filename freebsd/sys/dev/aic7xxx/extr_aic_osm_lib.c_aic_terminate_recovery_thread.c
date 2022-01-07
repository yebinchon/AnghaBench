
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct aic_softc {TYPE_1__* platform_data; int flags; } ;
struct TYPE_2__ {int mtx; int * recovery_thread; } ;


 int AIC_SHUTDOWN_RECOVERY ;
 int PUSER ;
 int msleep (TYPE_1__*,int *,int ,char*,int ) ;
 int wakeup (struct aic_softc*) ;

void
aic_terminate_recovery_thread(struct aic_softc *aic)
{

 if (aic->platform_data->recovery_thread == ((void*)0)) {
  return;
 }
 aic->flags |= AIC_SHUTDOWN_RECOVERY;
 wakeup(aic);




 msleep(aic->platform_data, &aic->platform_data->mtx, PUSER, "thtrm", 0);
}
