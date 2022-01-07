
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int EVENTHANDLER_INVOKE (int ,int ) ;
 int cpufreq_levels_changed ;
 int device_get_parent (int ) ;
 int device_get_unit (int ) ;

int
cpufreq_settings_changed(device_t dev)
{

 EVENTHANDLER_INVOKE(cpufreq_levels_changed,
     device_get_unit(device_get_parent(dev)));
 return (0);
}
