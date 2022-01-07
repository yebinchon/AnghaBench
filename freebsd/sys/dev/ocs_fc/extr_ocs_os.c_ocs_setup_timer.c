
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct timeval {int tv_sec; int tv_usec; } ;
struct TYPE_4__ {void (* func ) (void*) ;int lock; int callout; void* data; } ;
typedef TYPE_1__ ocs_timer_t ;
typedef int ocs_os_handle_t ;
typedef int int32_t ;


 int INT32_MAX ;
 int MTX_DEF ;
 int __ocs_callout ;
 int callout_init_mtx (int *,int *,int ) ;
 int callout_reset (int *,int,int ,TYPE_1__*) ;
 int mtx_init (int *,char*,int *,int ) ;
 int mtx_initialized (int *) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int ocs_log_err (int *,char*) ;
 int tvtohz (struct timeval*) ;

int32_t
ocs_setup_timer(ocs_os_handle_t os, ocs_timer_t *timer, void(*func)(void *arg), void *data, uint32_t timeout_ms)
{
 struct timeval tv;
 int hz;

 if (timer == ((void*)0)) {
  ocs_log_err(((void*)0), "bad parameter\n");
  return -1;
 }

 if (!mtx_initialized(&timer->lock)) {
  mtx_init(&timer->lock, "ocs_timer", ((void*)0), MTX_DEF);
 }

 callout_init_mtx(&timer->callout, &timer->lock, 0);

 timer->func = func;
 timer->data = data;

 tv.tv_sec = timeout_ms / 1000;
 tv.tv_usec = (timeout_ms % 1000) * 1000;

 hz = tvtohz(&tv);
 if (hz < 0)
  hz = INT32_MAX;
 if (hz == 0)
  hz = 1;

 mtx_lock(&timer->lock);
  callout_reset(&timer->callout, hz, __ocs_callout, timer);
 mtx_unlock(&timer->lock);

 return 0;
}
