
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ vm_offset_t ;
struct xen_add_to_physmap {unsigned int idx; unsigned int gpfn; int space; int domid; } ;
typedef int grant_entry_t ;


 int DOMID_SELF ;
 scalar_t__ HYPERVISOR_memory_op (int ,struct xen_add_to_physmap*) ;
 int KASSERT (scalar_t__,char*) ;
 unsigned int PAGE_SHIFT ;
 unsigned int PAGE_SIZE ;
 int XENMAPSPACE_grant_table ;
 int XENMEM_add_to_physmap ;
 scalar_t__ kva_alloc (unsigned int) ;
 unsigned int max_nr_grant_frames () ;
 int panic (char*) ;
 int pmap_kenter (scalar_t__,unsigned int) ;
 unsigned int resume_frames ;
 int * shared ;

__attribute__((used)) static int
gnttab_map(unsigned int start_idx, unsigned int end_idx)
{
 struct xen_add_to_physmap xatp;
 unsigned int i = end_idx;





 do {
  xatp.domid = DOMID_SELF;
  xatp.idx = i;
  xatp.space = XENMAPSPACE_grant_table;
  xatp.gpfn = (resume_frames >> PAGE_SHIFT) + i;
  if (HYPERVISOR_memory_op(XENMEM_add_to_physmap, &xatp))
   panic("HYPERVISOR_memory_op failed to map gnttab");
 } while (i-- > start_idx);

 if (shared == ((void*)0)) {
  vm_offset_t area;

  area = kva_alloc(PAGE_SIZE * max_nr_grant_frames());
  KASSERT(area, ("can't allocate VM space for grant table"));
  shared = (grant_entry_t *)area;
 }

 for (i = start_idx; i <= end_idx; i++) {
  pmap_kenter((vm_offset_t) shared + i * PAGE_SIZE,
      resume_frames + i * PAGE_SIZE);
 }

 return (0);
}
