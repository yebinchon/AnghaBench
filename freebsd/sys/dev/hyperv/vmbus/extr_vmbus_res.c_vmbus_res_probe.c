
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int ACPI_ID_PROBE (int ,int ,char**,int *) ;
 int CPUID_HV_MSR_SYNIC ;
 int ENXIO ;
 scalar_t__ VM_GUEST_HV ;
 int device_get_parent (int ) ;
 scalar_t__ device_get_unit (int ) ;
 int device_set_desc (int ,char*) ;
 int hyperv_features ;
 scalar_t__ vm_guest ;

__attribute__((used)) static int
vmbus_res_probe(device_t dev)
{
 char *id[] = { "VMBUS", ((void*)0) };
 int rv;

 if (device_get_unit(dev) != 0 || vm_guest != VM_GUEST_HV ||
     (hyperv_features & CPUID_HV_MSR_SYNIC) == 0)
  return (ENXIO);
 rv = ACPI_ID_PROBE(device_get_parent(dev), dev, id, ((void*)0));
 if (rv <= 0)
  device_set_desc(dev, "Hyper-V Vmbus Resource");
 return (rv);
}
