
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum cpu_sets { ____Placeholder_cpu_sets } cpu_sets ;
typedef int device_t ;
typedef int cpuset_t ;


 int EINVAL ;

 int all_cpus ;
 int bus_generic_get_cpus (int ,int ,int,size_t,int *) ;

__attribute__((used)) static int
nexus_get_cpus(device_t dev, device_t child, enum cpu_sets op, size_t setsize,
    cpuset_t *cpuset)
{

 switch (op) {







 default:
  return (bus_generic_get_cpus(dev, child, op, setsize, cpuset));
 }
}
