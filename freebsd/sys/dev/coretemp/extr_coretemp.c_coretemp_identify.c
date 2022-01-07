
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
typedef int driver_t ;
typedef int * device_t ;


 scalar_t__ CPU_VENDOR_INTEL ;
 int cpu_high ;
 scalar_t__ cpu_vendor_id ;
 int * device_add_child (int *,char*,int) ;
 int * device_find_child (int *,char*,int) ;
 int device_printf (int *,char*) ;
 int do_cpuid (int,int*) ;

__attribute__((used)) static void
coretemp_identify(driver_t *driver, device_t parent)
{
 device_t child;
 u_int regs[4];


 if (device_find_child(parent, "coretemp", -1) != ((void*)0))
  return;


 if (cpu_high < 6 || cpu_vendor_id != CPU_VENDOR_INTEL)
  return;




 do_cpuid(0x06, regs);
 if ((regs[0] & 0x1) != 1)
  return;





 child = device_add_child(parent, "coretemp", -1);
 if (child == ((void*)0))
  device_printf(parent, "add coretemp child failed\n");
}
