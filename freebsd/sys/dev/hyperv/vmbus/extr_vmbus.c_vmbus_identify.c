
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int driver_t ;
typedef int device_t ;


 int CPUID_HV_MSR_SYNIC ;
 scalar_t__ VM_GUEST_HV ;
 int device_add_child (int ,char*,int) ;
 scalar_t__ device_get_unit (int ) ;
 int hyperv_features ;
 scalar_t__ vm_guest ;

__attribute__((used)) static void
vmbus_identify(driver_t *driver, device_t parent)
{

 if (device_get_unit(parent) != 0 || vm_guest != VM_GUEST_HV ||
     (hyperv_features & CPUID_HV_MSR_SYNIC) == 0)
  return;
 device_add_child(parent, "vmbus", -1);
}
