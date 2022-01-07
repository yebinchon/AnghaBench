
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct vcpu_register_vcpu_info {int mfn; scalar_t__ offset; } ;
struct vcpu_info {int dummy; } ;
struct TYPE_2__ {struct vcpu_info* vcpu_info; } ;


 int * DPCPU_GET (struct vcpu_info*) ;
 struct vcpu_info* DPCPU_PTR (int ) ;
 int DPCPU_SET (struct vcpu_info*,struct vcpu_info*) ;
 TYPE_1__* HYPERVISOR_shared_info ;
 int HYPERVISOR_vcpu_op (int ,int,struct vcpu_register_vcpu_info*) ;
 int IS_BSP () ;
 int KASSERT (int,char*) ;
 int PAGE_SHIFT ;
 int PCPU_GET (int ) ;
 int PCPU_SET (int ,int) ;
 int VCPUOP_register_vcpu_info ;
 int XEN_HVM_CPUID_VCPU_ID_PRESENT ;
 int acpi_id ;
 scalar_t__ cpuid_base ;
 int cpuid_count (scalar_t__,int ,int*) ;
 int panic (char*,int) ;
 int set_percpu_callback (int) ;
 scalar_t__ trunc_page (int) ;
 int vcpu_id ;
 int vcpu_local_info ;
 int vtophys (struct vcpu_info*) ;
 int xen_domain () ;
 scalar_t__ xen_evtchn_needs_ack ;
 int xen_pv_domain () ;

__attribute__((used)) static void
xen_hvm_cpu_init(void)
{
 struct vcpu_register_vcpu_info info;
 struct vcpu_info *vcpu_info;
 uint32_t regs[4];
 int cpu, rc;

 if (!xen_domain())
  return;

 if (DPCPU_GET(vcpu_info) != ((void*)0)) {





  return;
 }





 KASSERT(cpuid_base != 0, ("Invalid base Xen CPUID leaf"));
 cpuid_count(cpuid_base + 4, 0, regs);
 KASSERT((regs[0] & XEN_HVM_CPUID_VCPU_ID_PRESENT) ||
     !xen_pv_domain(),
     ("Xen PV domain without vcpu_id in cpuid"));
 PCPU_SET(vcpu_id, (regs[0] & XEN_HVM_CPUID_VCPU_ID_PRESENT) ?
     regs[1] : PCPU_GET(acpi_id));

 if (xen_evtchn_needs_ack && !IS_BSP()) {







  rc = set_percpu_callback(PCPU_GET(vcpu_id));
  if (rc != 0)
   panic("Event channel upcall vector setup failed: %d",
       rc);
 }
 vcpu_info = DPCPU_PTR(vcpu_local_info);
 cpu = PCPU_GET(vcpu_id);
 info.mfn = vtophys(vcpu_info) >> PAGE_SHIFT;
 info.offset = vtophys(vcpu_info) - trunc_page(vtophys(vcpu_info));

 rc = HYPERVISOR_vcpu_op(VCPUOP_register_vcpu_info, cpu, &info);
 if (rc != 0)
  DPCPU_SET(vcpu_info, &HYPERVISOR_shared_info->vcpu_info[cpu]);
 else
  DPCPU_SET(vcpu_info, vcpu_info);
}
