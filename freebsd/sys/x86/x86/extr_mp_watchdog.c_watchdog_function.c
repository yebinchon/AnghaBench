
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Giant ;
 int WATCHDOG_THRESHOLD ;
 int callout_reset (int *,int,void (*) (void*),int *) ;
 int hz ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int watchdog_callout ;
 int watchdog_timer ;

__attribute__((used)) static void
watchdog_function(void *arg)
{





 mtx_lock(&Giant);
 watchdog_timer = WATCHDOG_THRESHOLD;
 mtx_unlock(&Giant);
 callout_reset(&watchdog_callout, 1 * hz, watchdog_function, ((void*)0));
}
