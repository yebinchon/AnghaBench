
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int * vm_page_t ;
typedef scalar_t__ uint64_t ;
typedef size_t uint32_t ;
struct gnttab_unmap_grant_ref {int handle; int pseudo_phys_res; int pseudo_phys_res_id; int mem; scalar_t__ phys_base_addr; scalar_t__ dev_bus_addr; scalar_t__ host_addr; } ;
struct gntdev_gmap {int count; struct gnttab_unmap_grant_ref* map; TYPE_1__* grant_map_ops; TYPE_2__* notify; scalar_t__ file_index; } ;
struct TYPE_4__ {scalar_t__ index; } ;
struct TYPE_3__ {int handle; scalar_t__ host_addr; } ;


 int GNTTABOP_unmap_grant_ref ;
 int HYPERVISOR_grant_table_op (int ,struct gnttab_unmap_grant_ref*,int) ;
 int KASSERT (int,char*) ;
 int M_GNTDEV ;
 int M_WAITOK ;
 int * PHYS_TO_VM_PAGE (scalar_t__) ;
 int VM_ALLOC_WAITFAIL ;
 int VM_OBJECT_WLOCK (int ) ;
 int VM_OBJECT_WUNLOCK (int ) ;
 int cdev_pager_free_page (int ,int *) ;
 int free (struct gnttab_unmap_grant_ref*,int ) ;
 int gntdev_dev ;
 struct gnttab_unmap_grant_ref* malloc (int,int ,int ) ;
 int notify (TYPE_2__*,int *) ;
 scalar_t__ vm_page_busy_acquire (int *,int ) ;
 int * vm_page_lookup (int ,size_t) ;
 int xenmem_free (int ,int ,int ) ;

__attribute__((used)) static int
notify_unmap_cleanup(struct gntdev_gmap *gmap)
{
 uint32_t i;
 int error, count;
 vm_page_t m;
 struct gnttab_unmap_grant_ref *unmap_ops;

 unmap_ops = malloc(sizeof(struct gnttab_unmap_grant_ref) * gmap->count,
   M_GNTDEV, M_WAITOK);


 count = 0;
 for (i = 0; i < gmap->count; i++) {
  if (gmap->grant_map_ops[i].handle != -1) {
   unmap_ops[count].handle = gmap->grant_map_ops[i].handle;
   unmap_ops[count].host_addr =
    gmap->grant_map_ops[i].host_addr;
   unmap_ops[count].dev_bus_addr = 0;
   count++;
  }
 }


 if (count > 0 && gmap->notify) {
  vm_page_t page;
  uint64_t page_offset;

  page_offset = gmap->notify->index - gmap->file_index;
  page = PHYS_TO_VM_PAGE(gmap->map->phys_base_addr + page_offset);
  notify(gmap->notify, page);
 }


 VM_OBJECT_WLOCK(gmap->map->mem);
retry:
 for (i = 0; i < gmap->count; i++) {
  m = vm_page_lookup(gmap->map->mem, i);
  if (m == ((void*)0))
   continue;
  if (vm_page_busy_acquire(m, VM_ALLOC_WAITFAIL) == 0)
   goto retry;
  cdev_pager_free_page(gmap->map->mem, m);
 }
 VM_OBJECT_WUNLOCK(gmap->map->mem);


 error = HYPERVISOR_grant_table_op(GNTTABOP_unmap_grant_ref,
     unmap_ops, count);

 for (i = 0; i < gmap->count; i++) {
  gmap->grant_map_ops[i].handle = -1;
  gmap->grant_map_ops[i].host_addr = 0;
 }

 if (gmap->map) {
  error = xenmem_free(gntdev_dev, gmap->map->pseudo_phys_res_id,
      gmap->map->pseudo_phys_res);
  KASSERT(error == 0,
      ("Unable to release memory resource: %d", error));

  free(gmap->map, M_GNTDEV);
  gmap->map = ((void*)0);
 }

 free(unmap_ops, M_GNTDEV);

 return (error);
}
