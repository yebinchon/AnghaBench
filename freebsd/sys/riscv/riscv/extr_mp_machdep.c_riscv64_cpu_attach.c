
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef size_t u_int ;
typedef int * device_t ;


 int EINVAL ;
 int KASSERT (int ,char*) ;
 size_t MAXCPU ;
 scalar_t__ bootverbose ;
 int * cpu_get_cpuid (int *,size_t*) ;
 int ** cpu_list ;
 size_t device_get_unit (int *) ;
 int device_printf (int *,char*) ;
 size_t mp_maxid ;
 int printf (char*,...) ;

__attribute__((used)) static int
riscv64_cpu_attach(device_t dev)
{
 const uint32_t *reg;
 size_t reg_size;
 u_int cpuid;
 int i;

 cpuid = device_get_unit(dev);

 if (cpuid >= MAXCPU || cpuid > mp_maxid)
  return (EINVAL);
 KASSERT(cpu_list[cpuid] == ((void*)0), ("Already have cpu %u", cpuid));

 reg = cpu_get_cpuid(dev, &reg_size);
 if (reg == ((void*)0))
  return (EINVAL);

 if (bootverbose) {
  device_printf(dev, "register <");
  for (i = 0; i < reg_size; i++)
   printf("%s%x", (i == 0) ? "" : " ", reg[i]);
  printf(">\n");
 }


 cpu_list[cpuid] = dev;

 return (0);
}
