
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct aic_softc {int unit; TYPE_1__* platform_data; } ;
struct TYPE_2__ {int recovery_thread; } ;


 int aic_kthread_create (int ,struct aic_softc*,int *,int ,int ,char*,int ) ;
 int aic_recovery_thread ;

int
aic_spawn_recovery_thread(struct aic_softc *aic)
{
 int error;

 error = aic_kthread_create(aic_recovery_thread, aic,
          &aic->platform_data->recovery_thread,
                   0, 0, "aic_recovery%d",
          aic->unit);
 return (error);
}
