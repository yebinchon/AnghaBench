
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum cpu_sets { ____Placeholder_cpu_sets } cpu_sets ;
typedef int device_t ;
typedef int cpuset_t ;


 int bus_get_cpus (int ,int,size_t,int *) ;

int
acpi_pcib_get_cpus(device_t pcib, device_t dev, enum cpu_sets op,
    size_t setsize, cpuset_t *cpuset)
{

 return (bus_get_cpus(pcib, op, setsize, cpuset));
}
