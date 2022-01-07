
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmctx {int dummy; } ;
typedef enum ev_type { ____Placeholder_ev_type } ev_type ;


 int PM1_PWRBTN_STS ;
 int pm1_status ;
 int pm_lock ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int sci_update (struct vmctx*) ;

__attribute__((used)) static void
power_button_handler(int signal, enum ev_type type, void *arg)
{
 struct vmctx *ctx;

 ctx = arg;
 pthread_mutex_lock(&pm_lock);
 if (!(pm1_status & PM1_PWRBTN_STS)) {
  pm1_status |= PM1_PWRBTN_STS;
  sci_update(ctx);
 }
 pthread_mutex_unlock(&pm_lock);
}
