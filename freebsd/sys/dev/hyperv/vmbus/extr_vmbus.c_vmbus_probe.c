
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int BUS_PROBE_DEFAULT ;
 int CPUID_HV_MSR_SYNIC ;
 int ENXIO ;
 scalar_t__ VM_GUEST_HV ;
 scalar_t__ device_get_unit (int ) ;
 int device_set_desc (int ,char*) ;
 int hyperv_features ;
 scalar_t__ vm_guest ;

__attribute__((used)) static int
vmbus_probe(device_t dev)
{

 if (device_get_unit(dev) != 0 || vm_guest != VM_GUEST_HV ||
     (hyperv_features & CPUID_HV_MSR_SYNIC) == 0)
  return (ENXIO);

 device_set_desc(dev, "Hyper-V Vmbus");
 return (BUS_PROBE_DEFAULT);
}
