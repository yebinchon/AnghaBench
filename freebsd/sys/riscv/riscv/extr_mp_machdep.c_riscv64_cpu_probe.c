
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int ;
typedef int device_t ;


 int EINVAL ;
 scalar_t__ MAXCPU ;
 scalar_t__ device_get_unit (int ) ;
 int device_quiet (int ) ;
 scalar_t__ mp_maxid ;

__attribute__((used)) static int
riscv64_cpu_probe(device_t dev)
{
 u_int cpuid;

 cpuid = device_get_unit(dev);
 if (cpuid >= MAXCPU || cpuid > mp_maxid)
  return (EINVAL);

 device_quiet(dev);
 return (0);
}
