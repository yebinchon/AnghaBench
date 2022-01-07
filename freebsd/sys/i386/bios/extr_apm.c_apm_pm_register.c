
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int POWER_PM_TYPE_APM ;
 int apm_pm_func ;
 int power_pm_register (int ,int ,int *) ;
 int resource_disabled (char*,int ) ;

__attribute__((used)) static void
apm_pm_register(void *arg)
{

 if (!resource_disabled("apm", 0))
  power_pm_register(POWER_PM_TYPE_APM, apm_pm_func, ((void*)0));
}
