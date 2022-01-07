
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cf_setting {int dev; int freq; } ;
typedef int device_t ;


 int CPUFREQ_VAL_UNKNOWN ;
 int CPU_MAX_SPEED ;
 int CPU_SPEED_PERCENT (int) ;
 int E2BIG ;
 int EINVAL ;
 int memset (struct cf_setting*,int ,int) ;

__attribute__((used)) static int
acpi_thr_settings(device_t dev, struct cf_setting *sets, int *count)
{
 int i, speed;

 if (sets == ((void*)0) || count == ((void*)0))
  return (EINVAL);
 if (*count < CPU_MAX_SPEED)
  return (E2BIG);


 memset(sets, CPUFREQ_VAL_UNKNOWN, sizeof(*sets) * CPU_MAX_SPEED);
 for (i = 0, speed = CPU_MAX_SPEED; speed != 0; i++, speed--) {
  sets[i].freq = CPU_SPEED_PERCENT(speed);
  sets[i].dev = dev;
 }
 *count = CPU_MAX_SPEED;

 return (0);
}
