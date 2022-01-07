
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ vm_paddr_t ;
typedef int uint32_t ;
typedef enum xen_hvm_init_type { ____Placeholder_xen_hvm_init_type } xen_hvm_init_type ;


 int EINVAL ;
 int ENXIO ;
 scalar_t__ KERNBASE ;
 int XEN_HVM_INIT_EARLY ;
 int XEN_HVM_INIT_LATE ;
 scalar_t__ cpuid_base ;
 int do_cpuid (scalar_t__,int*) ;
 int hypercall_page ;
 int hypervisor_version () ;
 scalar_t__ vtophys (int *) ;
 int wrmsr (int,scalar_t__) ;
 scalar_t__ xen_domain () ;
 scalar_t__ xen_hvm_cpuid_base () ;

int
xen_hvm_init_hypercall_stubs(enum xen_hvm_init_type init_type)
{
 uint32_t regs[4];


 if (cpuid_base == 0)
  cpuid_base = xen_hvm_cpuid_base();
 if (cpuid_base == 0)
  return (ENXIO);

 if (xen_domain() && init_type == XEN_HVM_INIT_LATE) {





  hypervisor_version();
  return 0;
 }

 if (init_type == XEN_HVM_INIT_LATE)
  hypervisor_version();




 do_cpuid(cpuid_base + 2, regs);
 if (regs[0] != 1)
  return (EINVAL);

 wrmsr(regs[1], (init_type == XEN_HVM_INIT_EARLY)
     ? ((vm_paddr_t)&hypercall_page - KERNBASE)
     : vtophys(&hypercall_page));

 return (0);
}
