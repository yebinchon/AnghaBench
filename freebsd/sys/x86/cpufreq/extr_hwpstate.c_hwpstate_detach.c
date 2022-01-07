
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int cpufreq_unregister (int ) ;
 int hwpstate_goto_pstate (int ,int ) ;

__attribute__((used)) static int
hwpstate_detach(device_t dev)
{

 hwpstate_goto_pstate(dev, 0);
 return (cpufreq_unregister(dev));
}
