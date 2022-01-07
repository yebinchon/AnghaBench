
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int driver_t ;
typedef int device_t ;


 int CPUID_HV_ET_MASK ;
 int VMBUS_ET_NAME ;
 int device_add_child (int ,int ,int) ;
 int * device_find_child (int ,int ,int) ;
 scalar_t__ device_get_unit (int ) ;
 int hyperv_features ;
 int * hyperv_tc64 ;

__attribute__((used)) static void
vmbus_et_identify(driver_t *driver, device_t parent)
{
 if (device_get_unit(parent) != 0 ||
     device_find_child(parent, VMBUS_ET_NAME, -1) != ((void*)0) ||
     (hyperv_features & CPUID_HV_ET_MASK) != CPUID_HV_ET_MASK ||
     hyperv_tc64 == ((void*)0))
  return;

 device_add_child(parent, VMBUS_ET_NAME, -1);
}
