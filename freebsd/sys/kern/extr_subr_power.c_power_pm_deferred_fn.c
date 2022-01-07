
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int POWER_CMD_SUSPEND ;
 int power_pm_arg ;
 int power_pm_fn (int ,int ,int) ;

__attribute__((used)) static void
power_pm_deferred_fn(void *arg, int pending)
{
 int state = (intptr_t)arg;

 power_pm_fn(POWER_CMD_SUSPEND, power_pm_arg, state);
}
