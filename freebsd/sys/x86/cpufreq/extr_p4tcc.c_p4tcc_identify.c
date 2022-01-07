
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int driver_t ;
typedef int device_t ;


 int * BUS_ADD_CHILD (int ,int,char*,int) ;
 int CPUID_ACPI ;
 int CPUID_TM ;
 int cpu_feature ;
 int * device_find_child (int ,char*,int) ;
 int device_printf (int ,char*) ;

__attribute__((used)) static void
p4tcc_identify(driver_t *driver, device_t parent)
{

 if ((cpu_feature & (CPUID_ACPI | CPUID_TM)) != (CPUID_ACPI | CPUID_TM))
  return;


 if (device_find_child(parent, "p4tcc", -1) != ((void*)0))
  return;







 if (BUS_ADD_CHILD(parent, 10, "p4tcc", -1) == ((void*)0))
  device_printf(parent, "add p4tcc child failed\n");
}
