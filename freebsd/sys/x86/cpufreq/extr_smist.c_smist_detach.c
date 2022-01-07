
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int cpufreq_unregister (int ) ;

__attribute__((used)) static int
smist_detach(device_t dev)
{

 return (cpufreq_unregister(dev));
}
