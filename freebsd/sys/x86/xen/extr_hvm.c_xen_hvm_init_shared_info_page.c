
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xen_add_to_physmap {int gpfn; int space; scalar_t__ idx; int domid; } ;


 int DOMID_SELF ;
 scalar_t__ HYPERVISOR_memory_op (int ,struct xen_add_to_physmap*) ;
 int * HYPERVISOR_shared_info ;
 int M_NOWAIT ;
 int M_XENHVM ;
 int PAGE_SHIFT ;
 int PAGE_SIZE ;
 int XENMAPSPACE_shared_info ;
 int XENMEM_add_to_physmap ;
 int * malloc (int ,int ,int ) ;
 int panic (char*) ;
 int vtophys (int *) ;
 scalar_t__ xen_pv_domain () ;

__attribute__((used)) static void
xen_hvm_init_shared_info_page(void)
{
 struct xen_add_to_physmap xatp;

 if (xen_pv_domain()) {




  return;
 }

 if (HYPERVISOR_shared_info == ((void*)0)) {
  HYPERVISOR_shared_info = malloc(PAGE_SIZE, M_XENHVM, M_NOWAIT);
  if (HYPERVISOR_shared_info == ((void*)0))
   panic("Unable to allocate Xen shared info page");
 }

 xatp.domid = DOMID_SELF;
 xatp.idx = 0;
 xatp.space = XENMAPSPACE_shared_info;
 xatp.gpfn = vtophys(HYPERVISOR_shared_info) >> PAGE_SHIFT;
 if (HYPERVISOR_memory_op(XENMEM_add_to_physmap, &xatp))
  panic("HYPERVISOR_memory_op failed");
}
