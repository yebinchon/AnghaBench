
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
typedef scalar_t__ u_int64_t ;
struct TYPE_4__ {scalar_t__ shared_info; int magic; } ;
typedef TYPE_1__ start_info_t ;
typedef int shared_info_t ;


 int * HYPERVISOR_shared_info ;
 int HYPERVISOR_shutdown (int ) ;
 scalar_t__ KERNBASE ;
 int PAGE_SIZE ;
 scalar_t__ PG_PS ;
 scalar_t__ PG_RW ;
 scalar_t__ PG_U ;
 scalar_t__ PG_V ;
 int SHUTDOWN_crash ;
 int VM_GUEST_XEN ;
 int XEN_PV_DOMAIN ;
 int apic_ops ;
 int bzero_early (char*,int) ;
 scalar_t__ hammer_time (int ,scalar_t__) ;
 int hypervisor_info ;
 int init_ops ;
 int init_static_kenv (char*,int) ;
 int legacy_info ;
 TYPE_1__* legacy_start_info ;
 int load_cr3 (scalar_t__) ;
 int vm_guest ;
 int xc_printf (char*,...) ;
 int xen_apic_ops ;
 int xen_domain_type ;
 int xen_legacy_init_ops ;

uint64_t
hammer_time_xen_legacy(start_info_t *si, uint64_t xenstack)
{
 uint64_t physfree;
 uint64_t *PT4 = (u_int64_t *)xenstack;
 uint64_t *PT3 = (u_int64_t *)(xenstack + PAGE_SIZE);
 uint64_t *PT2 = (u_int64_t *)(xenstack + 2 * PAGE_SIZE);
 int i;
 char *kenv;

 xen_domain_type = XEN_PV_DOMAIN;
 vm_guest = VM_GUEST_XEN;

 if ((si == ((void*)0)) || (xenstack == 0)) {
  xc_printf("ERROR: invalid start_info or xen stack, halting\n");
  HYPERVISOR_shutdown(SHUTDOWN_crash);
 }

 xc_printf("FreeBSD PVH running on %s\n", si->magic);


 physfree = xenstack + 3 * PAGE_SIZE - KERNBASE;


 legacy_start_info = si;
 HYPERVISOR_shared_info =
     (shared_info_t *)(si->shared_info + KERNBASE);






 for (i = 0; i < (PAGE_SIZE / sizeof(uint64_t)); i++) {




  PT4[i] = ((uint64_t)&PT3[0]) - KERNBASE;
  PT4[i] |= PG_V | PG_RW | PG_U;





  PT3[i] = ((uint64_t)&PT2[0]) - KERNBASE;
  PT3[i] |= PG_V | PG_RW | PG_U;





  PT2[i] = i * (2 * 1024 * 1024);
  PT2[i] |= PG_V | PG_RW | PG_PS | PG_U;
 }
 load_cr3(((uint64_t)&PT4[0]) - KERNBASE);





 kenv = (void *)(physfree + KERNBASE);
 physfree += PAGE_SIZE;
 bzero_early(kenv, PAGE_SIZE);
 init_static_kenv(kenv, PAGE_SIZE);


 init_ops = xen_legacy_init_ops;
 apic_ops = xen_apic_ops;
 hypervisor_info = legacy_info;


 return (hammer_time(0, physfree));
}
