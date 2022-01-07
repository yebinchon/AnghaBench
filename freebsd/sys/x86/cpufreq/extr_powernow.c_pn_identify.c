
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int driver_t ;
typedef int device_t ;


 int AMDPM_FID ;
 int AMDPM_VID ;
 int * BUS_ADD_CHILD (int ,int,char*,int) ;
 int amd_pminfo ;
 int cpu_id ;
 int * device_find_child (int ,char*,int) ;
 int device_printf (int ,char*) ;

__attribute__((used)) static void
pn_identify(driver_t *driver, device_t parent)
{

 if ((amd_pminfo & AMDPM_FID) == 0 || (amd_pminfo & AMDPM_VID) == 0)
  return;
 switch (cpu_id & 0xf00) {
 case 0x600:
 case 0xf00:
  break;
 default:
  return;
 }
 if (device_find_child(parent, "powernow", -1) != ((void*)0))
  return;
 if (BUS_ADD_CHILD(parent, 10, "powernow", -1) == ((void*)0))
  device_printf(parent, "powernow: add child failed\n");
}
