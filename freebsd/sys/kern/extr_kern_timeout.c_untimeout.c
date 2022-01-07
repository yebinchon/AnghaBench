
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int timeout_t ;
struct callout_handle {TYPE_1__* callout; } ;
struct callout_cpu {int dummy; } ;
struct TYPE_3__ {void* c_arg; int * c_func; } ;


 int CC_UNLOCK (struct callout_cpu*) ;
 struct callout_cpu* callout_lock (TYPE_1__*) ;
 int callout_stop (TYPE_1__*) ;

void
untimeout(timeout_t *ftn, void *arg, struct callout_handle handle)
{
 struct callout_cpu *cc;






 if (handle.callout == ((void*)0))
  return;

 cc = callout_lock(handle.callout);
 if (handle.callout->c_func == ftn && handle.callout->c_arg == arg)
  callout_stop(handle.callout);
 CC_UNLOCK(cc);
}
