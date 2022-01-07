
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int cpufreq_register (int ) ;

__attribute__((used)) static int
hwpstate_attach(device_t dev)
{

 return (cpufreq_register(dev));
}
