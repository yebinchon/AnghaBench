
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum cpu_sets { ____Placeholder_cpu_sets } cpu_sets ;
typedef int * device_t ;
typedef int cpuset_t ;


 int BUS_GET_CPUS (int *,int *,int,size_t,int *) ;
 int EINVAL ;
 int * device_get_parent (int *) ;

int
bus_get_cpus(device_t dev, enum cpu_sets op, size_t setsize, cpuset_t *cpuset)
{
 device_t parent;

 parent = device_get_parent(dev);
 if (parent == ((void*)0))
  return (EINVAL);
 return (BUS_GET_CPUS(parent, dev, op, setsize, cpuset));
}
