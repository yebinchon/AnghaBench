
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int vm_size_t ;
typedef struct vm_object* vm_object_t ;
typedef scalar_t__ uint32_t ;
struct vm_object {int dummy; } ;
struct per_user_data {int user_data_lock; int gref_tree; } ;
struct gntdev_gref {int file_index; TYPE_1__* page; } ;
struct TYPE_2__ {scalar_t__ object; } ;


 int EINVAL ;
 int ENOMEM ;
 int OBJT_PHYS ;
 int OFF_TO_IDX (int ) ;
 struct gntdev_gref* RB_NEXT (int ,int *,struct gntdev_gref*) ;
 int VM_OBJECT_WLOCK (struct vm_object*) ;
 int VM_OBJECT_WUNLOCK (struct vm_object*) ;
 int gref_tree_head ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 struct vm_object* vm_object_allocate (int ,int ) ;
 int vm_object_deallocate (struct vm_object*) ;
 int vm_page_insert (TYPE_1__*,struct vm_object*,int ) ;

__attribute__((used)) static int
mmap_gref(struct per_user_data *priv_user, struct gntdev_gref *gref_start,
    uint32_t count, vm_size_t size, struct vm_object **object)
{
 vm_object_t mem_obj;
 struct gntdev_gref *gref;

 mem_obj = vm_object_allocate(OBJT_PHYS, size);
 if (mem_obj == ((void*)0))
  return (ENOMEM);

 mtx_lock(&priv_user->user_data_lock);
 VM_OBJECT_WLOCK(mem_obj);
 for (gref = gref_start; gref != ((void*)0) && count > 0; gref =
     RB_NEXT(gref_tree_head, &priv_user->gref_tree, gref)) {
  if (gref->page->object)
   break;

  vm_page_insert(gref->page, mem_obj,
      OFF_TO_IDX(gref->file_index));

  count--;
 }
 VM_OBJECT_WUNLOCK(mem_obj);
 mtx_unlock(&priv_user->user_data_lock);

 if (count) {
  vm_object_deallocate(mem_obj);
  return (EINVAL);
 }

 *object = mem_obj;

 return (0);

}
