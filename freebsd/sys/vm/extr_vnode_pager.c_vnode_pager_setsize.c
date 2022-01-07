
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef scalar_t__ vm_pindex_t ;
typedef int * vm_page_t ;
typedef int vm_ooffset_t ;
typedef TYPE_3__* vm_object_t ;
struct vnode {struct mount* v_mount; TYPE_3__* v_object; } ;
struct mount {int mnt_kern_flag; } ;
struct TYPE_8__ {int vnp_size; } ;
struct TYPE_9__ {TYPE_1__ vnp; } ;
struct TYPE_10__ {scalar_t__ type; scalar_t__ size; TYPE_2__ un_pager; } ;


 int DEV_BSIZE ;
 int KASSERT (int,char*) ;
 int MNTK_VMSETSIZE_BUG ;
 scalar_t__ OBJT_DEAD ;
 scalar_t__ OBJT_VNODE ;
 scalar_t__ OFF_TO_IDX (int) ;
 int PAGE_MASK ;
 int PAGE_SIZE ;
 int VM_ALLOC_NOCREAT ;
 int VM_OBJECT_WLOCK (TYPE_3__*) ;
 int VM_OBJECT_WUNLOCK (TYPE_3__*) ;
 int assert_vop_elocked (struct vnode*,char*) ;
 int pmap_zero_page_area (int *,int,int) ;
 int roundup2 (int,int ) ;
 int vm_object_page_remove (TYPE_3__*,scalar_t__,scalar_t__,int ) ;
 int vm_page_clear_dirty (int *,int,int) ;
 int * vm_page_grab (TYPE_3__*,scalar_t__,int ) ;
 int vm_page_none_valid (int *) ;
 int vm_page_set_valid_range (int *,int,int) ;
 int vm_page_xunbusy (int *) ;

void
vnode_pager_setsize(struct vnode *vp, vm_ooffset_t nsize)
{
 vm_object_t object;
 vm_page_t m;
 vm_pindex_t nobjsize;

 if ((object = vp->v_object) == ((void*)0))
  return;
 VM_OBJECT_WLOCK(object);
 if (object->type == OBJT_DEAD) {
  VM_OBJECT_WUNLOCK(object);
  return;
 }
 KASSERT(object->type == OBJT_VNODE,
     ("not vnode-backed object %p", object));
 if (nsize == object->un_pager.vnp.vnp_size) {



  VM_OBJECT_WUNLOCK(object);
  return;
 }
 nobjsize = OFF_TO_IDX(nsize + PAGE_MASK);
 if (nsize < object->un_pager.vnp.vnp_size) {



  if (nobjsize < object->size)
   vm_object_page_remove(object, nobjsize, object->size,
       0);
  if (!(nsize & PAGE_MASK))
   goto out;
  m = vm_page_grab(object, OFF_TO_IDX(nsize), VM_ALLOC_NOCREAT);
  if (m == ((void*)0))
   goto out;
  if (!vm_page_none_valid(m)) {
   int base = (int)nsize & PAGE_MASK;
   int size = PAGE_SIZE - base;





   pmap_zero_page_area(m, base, size);






   vm_page_set_valid_range(m, base, size);






   base = roundup2(base, DEV_BSIZE);
   vm_page_clear_dirty(m, base, PAGE_SIZE - base);
  }
  vm_page_xunbusy(m);
 }
out:
 object->un_pager.vnp.vnp_size = nsize;
 object->size = nobjsize;
 VM_OBJECT_WUNLOCK(object);
}
