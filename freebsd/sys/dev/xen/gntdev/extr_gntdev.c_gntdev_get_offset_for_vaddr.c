
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int vm_prot_t ;
typedef int vm_pindex_t ;
typedef TYPE_5__* vm_object_t ;
typedef int * vm_map_t ;
typedef TYPE_6__* vm_map_entry_t ;
struct thread {TYPE_2__* td_proc; } ;
struct ioctl_gntdev_get_offset_for_vaddr {int count; int offset; int vaddr; } ;
struct gntdev_gmap {int count; int file_index; } ;
typedef int boolean_t ;
struct TYPE_15__ {int end; int start; } ;
struct TYPE_12__ {int * ops; } ;
struct TYPE_13__ {TYPE_3__ devp; } ;
struct TYPE_14__ {scalar_t__ type; struct gntdev_gmap* handle; TYPE_4__ un_pager; } ;
struct TYPE_11__ {TYPE_1__* p_vmspace; } ;
struct TYPE_10__ {int vm_map; } ;


 int EINVAL ;
 int KERN_SUCCESS ;
 scalar_t__ OBJT_MGTDEVICE ;
 int PAGE_SIZE ;
 int VM_PROT_NONE ;
 int gntdev_gmap_pg_ops ;
 int vm_map_lookup (int **,int ,int ,TYPE_6__**,TYPE_5__**,int *,int *,int *) ;
 int vm_map_lookup_done (int *,TYPE_6__*) ;

__attribute__((used)) static int
gntdev_get_offset_for_vaddr(struct ioctl_gntdev_get_offset_for_vaddr *arg,
 struct thread *td)
{
 int error;
 vm_map_t map;
 vm_map_entry_t entry;
 vm_object_t mem;
 vm_pindex_t pindex;
 vm_prot_t prot;
 boolean_t wired;
 struct gntdev_gmap *gmap;
 int rc;

 map = &td->td_proc->p_vmspace->vm_map;
 error = vm_map_lookup(&map, arg->vaddr, VM_PROT_NONE, &entry,
      &mem, &pindex, &prot, &wired);
 if (error != KERN_SUCCESS)
  return (EINVAL);

 if ((mem->type != OBJT_MGTDEVICE) ||
     (mem->un_pager.devp.ops != &gntdev_gmap_pg_ops)) {
  rc = EINVAL;
  goto out;
 }

 gmap = mem->handle;
 if (gmap == ((void*)0) ||
     (entry->end - entry->start) != (gmap->count * PAGE_SIZE)) {
  rc = EINVAL;
  goto out;
 }

 arg->count = gmap->count;
 arg->offset = gmap->file_index;
 rc = 0;

out:
 vm_map_lookup_done(map, entry);
 return (rc);
}
