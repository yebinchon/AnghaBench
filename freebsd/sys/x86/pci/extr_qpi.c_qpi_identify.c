
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int driver_t ;
typedef int device_t ;


 int * BUS_ADD_CHILD (int ,int,char*,int) ;
 int CPUID_TO_FAMILY (int ) ;
 scalar_t__ CPU_VENDOR_INTEL ;
 int TUNABLE_INT_FETCH (char*,int*) ;
 int cpu_id ;
 scalar_t__ cpu_vendor_id ;
 int panic (char*) ;
 scalar_t__ pci_cfgregopen () ;

__attribute__((used)) static void
qpi_identify(driver_t *driver, device_t parent)
{
 int do_qpi;


 if (cpu_vendor_id != CPU_VENDOR_INTEL ||
     CPUID_TO_FAMILY(cpu_id) != 0x6)
  return;


 do_qpi = 0;
 TUNABLE_INT_FETCH("hw.attach_intel_csr_pci", &do_qpi);
 if (!do_qpi)
  return;


 if (pci_cfgregopen() == 0)
  return;


 if (BUS_ADD_CHILD(parent, 20, "qpi", -1) == ((void*)0))
  panic("Failed to add qpi bus");
}
