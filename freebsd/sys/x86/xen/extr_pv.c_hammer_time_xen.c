
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ vm_paddr_t ;
typedef scalar_t__ uint64_t ;
struct xen_add_to_physmap {int gpfn; int space; scalar_t__ idx; int domid; } ;
struct hvm_start_info {scalar_t__ modlist_paddr; scalar_t__ nr_modules; int flags; int magic; } ;
struct hvm_modlist_entry {scalar_t__ paddr; } ;
typedef int shared_info_t ;


 int DOMID_SELF ;
 scalar_t__ HYPERVISOR_memory_op (int ,struct xen_add_to_physmap*) ;
 int * HYPERVISOR_shared_info ;
 int HYPERVISOR_shutdown (int ) ;
 scalar_t__ KERNBASE ;
 scalar_t__ PAGE_SIZE ;
 int SHUTDOWN_crash ;
 int VM_GUEST_XEN ;
 int XENMAPSPACE_shared_info ;
 int XENMEM_add_to_physmap ;
 int XEN_HVM_DOMAIN ;
 int XEN_HVM_INIT_EARLY ;
 int XEN_HVM_START_MAGIC_VALUE ;
 int atop (scalar_t__) ;
 int bzero_early (char*,scalar_t__) ;
 scalar_t__ hammer_time (int ,scalar_t__) ;
 int hvm_start_flags ;
 int init_ops ;
 int init_static_kenv (char*,scalar_t__) ;
 scalar_t__ roundup2 (scalar_t__,scalar_t__) ;
 struct hvm_start_info* start_info ;
 int vm_guest ;
 int xc_printf (char*,...) ;
 int xen_domain_type ;
 int xen_hvm_init_hypercall_stubs (int ) ;
 int xen_pvh_init_ops ;

uint64_t
hammer_time_xen(vm_paddr_t start_info_paddr)
{
 struct hvm_modlist_entry *mod;
 struct xen_add_to_physmap xatp;
 uint64_t physfree;
 char *kenv;
 int rc;

 xen_domain_type = XEN_HVM_DOMAIN;
 vm_guest = VM_GUEST_XEN;

 rc = xen_hvm_init_hypercall_stubs(XEN_HVM_INIT_EARLY);
 if (rc) {
  xc_printf("ERROR: failed to initialize hypercall page: %d\n",
      rc);
  HYPERVISOR_shutdown(SHUTDOWN_crash);
 }

 start_info = (struct hvm_start_info *)(start_info_paddr + KERNBASE);
 if (start_info->magic != XEN_HVM_START_MAGIC_VALUE) {
  xc_printf("Unknown magic value in start_info struct: %#x\n",
      start_info->magic);
  HYPERVISOR_shutdown(SHUTDOWN_crash);
 }





 physfree = roundup2(start_info_paddr + PAGE_SIZE, PAGE_SIZE);

 xatp.domid = DOMID_SELF;
 xatp.idx = 0;
 xatp.space = XENMAPSPACE_shared_info;
 xatp.gpfn = atop(physfree);
 if (HYPERVISOR_memory_op(XENMEM_add_to_physmap, &xatp)) {
  xc_printf("ERROR: failed to setup shared_info page\n");
  HYPERVISOR_shutdown(SHUTDOWN_crash);
 }
 HYPERVISOR_shared_info = (shared_info_t *)(physfree + KERNBASE);
 physfree += PAGE_SIZE;





 kenv = (void *)(physfree + KERNBASE);
 physfree += PAGE_SIZE;
 bzero_early(kenv, PAGE_SIZE);
 init_static_kenv(kenv, PAGE_SIZE);

 if (start_info->modlist_paddr != 0) {
  if (start_info->modlist_paddr >= physfree) {
   xc_printf(
       "ERROR: unexpected module list memory address\n");
   HYPERVISOR_shutdown(SHUTDOWN_crash);
  }
  if (start_info->nr_modules == 0) {
   xc_printf(
       "ERROR: modlist_paddr != 0 but nr_modules == 0\n");
   HYPERVISOR_shutdown(SHUTDOWN_crash);
  }
  mod = (struct hvm_modlist_entry *)
      (vm_paddr_t)start_info->modlist_paddr + KERNBASE;
  if (mod[0].paddr >= physfree) {
   xc_printf("ERROR: unexpected module memory address\n");
   HYPERVISOR_shutdown(SHUTDOWN_crash);
  }
 }


 init_ops = xen_pvh_init_ops;
 hvm_start_flags = start_info->flags;


 return (hammer_time(0, physfree));
}
