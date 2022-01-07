
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cf_level {TYPE_1__* rel_set; } ;
typedef int device_t ;
struct TYPE_2__ {int freq; } ;


 int smu_slew_cpu_voltage (int ,int ) ;

__attribute__((used)) static void
smu_cpufreq_pre_change(device_t dev, const struct cf_level *level)
{





 if (level->rel_set[0].freq == 10000 )
  smu_slew_cpu_voltage(dev, 0);
}
