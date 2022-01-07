
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ vm_size_t ;
typedef int * vm_page_t ;
struct xen_remove_from_physmap {scalar_t__ gpfn; int domid; } ;
struct privcmd_map {int mapped; scalar_t__ size; int pseudo_phys_res; int pseudo_phys_res_id; struct privcmd_map* err; int phys_base_addr; int mem; } ;


 int DOMID_SELF ;
 int HYPERVISOR_memory_op (int ,struct xen_remove_from_physmap*) ;
 int KASSERT (int,char*) ;
 int M_PRIVCMD ;
 int VM_ALLOC_WAITFAIL ;
 int VM_OBJECT_WLOCK (int ) ;
 int VM_OBJECT_WUNLOCK (int ) ;
 int XENMEM_remove_from_physmap ;
 scalar_t__ atop (int ) ;
 int cdev_pager_free_page (int ,int *) ;
 int free (struct privcmd_map*,int ) ;
 int privcmd_dev ;
 scalar_t__ vm_page_busy_acquire (int *,int ) ;
 int * vm_page_lookup (int ,scalar_t__) ;
 int xenmem_free (int ,int ,int ) ;

__attribute__((used)) static void
privcmd_pg_dtor(void *handle)
{
 struct xen_remove_from_physmap rm = { .domid = DOMID_SELF };
 struct privcmd_map *map = handle;
 int error;
 vm_size_t i;
 vm_page_t m;





 if (map->mapped == 1) {
  VM_OBJECT_WLOCK(map->mem);
retry:
  for (i = 0; i < map->size; i++) {
   m = vm_page_lookup(map->mem, i);
   if (m == ((void*)0))
    continue;
   if (vm_page_busy_acquire(m, VM_ALLOC_WAITFAIL) == 0)
    goto retry;
   cdev_pager_free_page(map->mem, m);
  }
  VM_OBJECT_WUNLOCK(map->mem);

  for (i = 0; i < map->size; i++) {
   rm.gpfn = atop(map->phys_base_addr) + i;
   HYPERVISOR_memory_op(XENMEM_remove_from_physmap, &rm);
  }
  free(map->err, M_PRIVCMD);
 }

 error = xenmem_free(privcmd_dev, map->pseudo_phys_res_id,
     map->pseudo_phys_res);
 KASSERT(error == 0, ("Unable to release memory resource: %d", error));

 free(map, M_PRIVCMD);
}
