
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_2__ {scalar_t__ freq; } ;
struct cf_level {TYPE_1__ total_set; } ;
typedef int * device_t ;


 int CPUFREQ_LEVELS (int *,struct cf_level*,int*) ;
 int M_NOWAIT ;
 int M_TEMP ;
 int devclass_find (char*) ;
 int * devclass_get_device (int ,int) ;
 int free (struct cf_level*,int ) ;
 struct cf_level* malloc (int,int ,int ) ;
 int printf (char*) ;
 int rdtsc ;
 int set_cputicker (int ,int,int) ;

__attribute__((used)) static void
tsc_levels_changed(void *arg, int unit)
{
 device_t cf_dev;
 struct cf_level *levels;
 int count, error;
 uint64_t max_freq;


 if (unit != 0)
  return;


 cf_dev = devclass_get_device(devclass_find("cpufreq"), unit);
 if (cf_dev == ((void*)0)) {
  printf("tsc_levels_changed() called but no cpufreq device?\n");
  return;
 }


 count = 64;
 levels = malloc(count * sizeof(*levels), M_TEMP, M_NOWAIT);
 if (levels == ((void*)0))
  return;
 error = CPUFREQ_LEVELS(cf_dev, levels, &count);
 if (error == 0 && count != 0) {
  max_freq = (uint64_t)levels[0].total_set.freq * 1000000;
  set_cputicker(rdtsc, max_freq, 1);
 } else
  printf("tsc_levels_changed: no max freq found\n");
 free(levels, M_TEMP);
}
