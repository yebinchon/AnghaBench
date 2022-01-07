
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct timeval {int tv_sec; int tv_usec; } ;
struct TYPE_4__ {int lock; int callout; } ;
typedef TYPE_1__ ocs_timer_t ;
typedef int int32_t ;


 int INT32_MAX ;
 int __ocs_callout ;
 int callout_reset (int *,int,int ,TYPE_1__*) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int ocs_log_err (int *,char*) ;
 int tvtohz (struct timeval*) ;

int32_t
ocs_mod_timer(ocs_timer_t *timer, uint32_t timeout_ms)
{
 struct timeval tv;
 int hz;

 if (timer == ((void*)0)) {
  ocs_log_err(((void*)0), "bad parameter\n");
  return -1;
 }

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
