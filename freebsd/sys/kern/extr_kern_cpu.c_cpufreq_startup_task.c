
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int cpufreq_settings_changed (int ) ;

__attribute__((used)) static void
cpufreq_startup_task(void *ctx, int pending)
{

 cpufreq_settings_changed((device_t)ctx);
}
