
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct eventtimer {int et_active; void* et_arg; int * et_deregister_cb; int * et_event_cb; } ;
typedef int et_event_cb_t ;
typedef int et_deregister_cb_t ;


 int EBUSY ;
 int EINVAL ;

int
et_init(struct eventtimer *et, et_event_cb_t *event,
    et_deregister_cb_t *deregister, void *arg)
{

 if (event == ((void*)0))
  return (EINVAL);
 if (et->et_active)
  return (EBUSY);

 et->et_active = 1;
 et->et_event_cb = event;
 et->et_deregister_cb = deregister;
 et->et_arg = arg;
 return (0);
}
