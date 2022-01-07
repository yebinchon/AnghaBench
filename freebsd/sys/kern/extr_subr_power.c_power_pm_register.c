
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int ;
typedef int power_pm_fn_t ;


 int ENXIO ;
 scalar_t__ POWER_PM_TYPE_NONE ;
 int TASK_INIT (int *,int ,int ,int *) ;
 void* power_pm_arg ;
 int power_pm_deferred_fn ;
 int power_pm_fn ;
 int power_pm_task ;
 scalar_t__ power_pm_type ;

int
power_pm_register(u_int pm_type, power_pm_fn_t pm_fn, void *pm_arg)
{
 int error;

 if (power_pm_type == POWER_PM_TYPE_NONE ||
     power_pm_type == pm_type) {
  power_pm_type = pm_type;
  power_pm_fn = pm_fn;
  power_pm_arg = pm_arg;
  error = 0;
  TASK_INIT(&power_pm_task, 0, power_pm_deferred_fn, ((void*)0));
 } else {
  error = ENXIO;
 }

 return (error);
}
