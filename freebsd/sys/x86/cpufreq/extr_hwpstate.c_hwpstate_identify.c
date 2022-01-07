
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int driver_t ;
typedef int device_t ;


 int AMDPM_HW_PSTATE ;
 int * BUS_ADD_CHILD (int ,int,char*,int) ;
 int CPUID_TO_FAMILY (int ) ;
 scalar_t__ CPU_VENDOR_AMD ;
 int HWPSTATE_DEBUG (int ,char*) ;
 int amd_pminfo ;
 int cpu_id ;
 scalar_t__ cpu_vendor_id ;
 int * device_find_child (int ,char*,int) ;
 int device_printf (int ,char*) ;
 scalar_t__ resource_disabled (char*,int ) ;

__attribute__((used)) static void
hwpstate_identify(driver_t *driver, device_t parent)
{

 if (device_find_child(parent, "hwpstate", -1) != ((void*)0))
  return;

 if (cpu_vendor_id != CPU_VENDOR_AMD || CPUID_TO_FAMILY(cpu_id) < 0x10)
  return;




 if ((amd_pminfo & AMDPM_HW_PSTATE) == 0) {
  HWPSTATE_DEBUG(parent, "hwpstate enable bit is not set.\n");
  return;
 }

 if (resource_disabled("hwpstate", 0))
  return;

 if (BUS_ADD_CHILD(parent, 10, "hwpstate", -1) == ((void*)0))
  device_printf(parent, "hwpstate: add child failed\n");
}
