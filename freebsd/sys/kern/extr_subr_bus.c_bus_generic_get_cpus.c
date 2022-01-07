
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef enum cpu_sets { ____Placeholder_cpu_sets } cpu_sets ;
typedef TYPE_1__* device_t ;
typedef int cpuset_t ;
struct TYPE_5__ {int * parent; } ;


 int BUS_GET_CPUS (int *,TYPE_1__*,int,size_t,int *) ;
 int EINVAL ;

int
bus_generic_get_cpus(device_t dev, device_t child, enum cpu_sets op,
    size_t setsize, cpuset_t *cpuset)
{


 if (dev->parent != ((void*)0))
  return (BUS_GET_CPUS(dev->parent, child, op, setsize, cpuset));
 return (EINVAL);
}
