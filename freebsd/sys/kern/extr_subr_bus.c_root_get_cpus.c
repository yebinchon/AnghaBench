
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum cpu_sets { ____Placeholder_cpu_sets } cpu_sets ;
typedef int device_t ;
typedef int cpuset_t ;


 int EINVAL ;

 int all_cpus ;

__attribute__((used)) static int
root_get_cpus(device_t dev, device_t child, enum cpu_sets op, size_t setsize,
    cpuset_t *cpuset)
{

 switch (op) {
 case 128:

  if (setsize != sizeof(cpuset_t))
   return (EINVAL);
  *cpuset = all_cpus;
  return (0);
 default:
  return (EINVAL);
 }
}
