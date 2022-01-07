
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int driver_t ;
typedef int * device_t ;


 int * BUS_ADD_CHILD (int *,int,char*,int) ;
 int CPUID2_EST ;
 scalar_t__ CPU_VENDOR_CENTAUR ;
 scalar_t__ CPU_VENDOR_INTEL ;
 int cpu_feature2 ;
 scalar_t__ cpu_high ;
 scalar_t__ cpu_vendor_id ;
 int * device_find_child (int *,char*,int) ;
 int device_printf (int *,char*) ;

__attribute__((used)) static void
est_identify(driver_t *driver, device_t parent)
{
 device_t child;


 if (device_find_child(parent, "est", -1) != ((void*)0))
  return;


 if (cpu_high == 0 || (cpu_vendor_id != CPU_VENDOR_INTEL &&
     cpu_vendor_id != CPU_VENDOR_CENTAUR))
  return;




 if (!(cpu_feature2 & CPUID2_EST))
  return;





 child = BUS_ADD_CHILD(parent, 10, "est", -1);
 if (child == ((void*)0))
  device_printf(parent, "add est child failed\n");
}
