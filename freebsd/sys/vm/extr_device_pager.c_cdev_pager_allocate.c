
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int vm_prot_t ;
typedef scalar_t__ vm_pindex_t ;
typedef int vm_ooffset_t ;
typedef TYPE_3__* vm_object_t ;
typedef int u_short ;
struct ucred {int dummy; } ;
struct cdev_pager_ops {scalar_t__ (* cdev_pg_ctor ) (void*,int,int ,int,struct ucred*,int *) ;int * cdev_pg_populate; } ;
typedef enum obj_type { ____Placeholder_obj_type } obj_type ;
struct TYPE_10__ {struct cdev_pager_ops* ops; int devp_pglist; void* dev; } ;
struct TYPE_11__ {TYPE_1__ devp; } ;
struct TYPE_12__ {scalar_t__ size; int type; struct TYPE_12__* handle; TYPE_2__ un_pager; int pg_color; int flags; } ;


 int KASSERT (int,char*) ;
 int OBJT_DEVICE ;
 int OBJT_MGTDEVICE ;
 int OBJ_COLORED ;
 scalar_t__ OBJ_MAX_SIZE ;
 int OBJ_POPULATE ;
 scalar_t__ OFF_TO_IDX (int) ;
 int PAGE_MASK ;
 int TAILQ_INIT (int *) ;
 int TAILQ_INSERT_TAIL (int *,TYPE_3__*,int ) ;
 int dev_pager_mtx ;
 int dev_pager_object_list ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int pager_object_list ;
 int round_page (int) ;
 scalar_t__ stub1 (void*,int,int ,int,struct ucred*,int *) ;
 TYPE_3__* vm_object_allocate (int,scalar_t__) ;
 int vm_object_deallocate (TYPE_3__*) ;
 int vm_object_set_flag (TYPE_3__*,int ) ;
 TYPE_3__* vm_pager_object_lookup (int *,void*) ;

vm_object_t
cdev_pager_allocate(void *handle, enum obj_type tp, struct cdev_pager_ops *ops,
    vm_ooffset_t size, vm_prot_t prot, vm_ooffset_t foff, struct ucred *cred)
{
 vm_object_t object, object1;
 vm_pindex_t pindex;
 u_short color;

 if (tp != OBJT_DEVICE && tp != OBJT_MGTDEVICE)
  return (((void*)0));
 KASSERT(tp == OBJT_MGTDEVICE || ops->cdev_pg_populate == ((void*)0),
     ("populate on unmanaged device pager"));




 if (foff & PAGE_MASK)
  return (((void*)0));
 size = round_page(size);
 pindex = OFF_TO_IDX(foff) + OFF_TO_IDX(size);
 if (pindex > OBJ_MAX_SIZE || pindex < OFF_TO_IDX(foff) ||
     pindex < OFF_TO_IDX(size))
  return (((void*)0));

 if (ops->cdev_pg_ctor(handle, size, prot, foff, cred, &color) != 0)
  return (((void*)0));
 mtx_lock(&dev_pager_mtx);




 object1 = ((void*)0);
 object = vm_pager_object_lookup(&dev_pager_object_list, handle);
 if (object == ((void*)0)) {





  mtx_unlock(&dev_pager_mtx);
  object1 = vm_object_allocate(tp, pindex);
  object1->flags |= OBJ_COLORED;
  object1->pg_color = color;
  object1->handle = handle;
  object1->un_pager.devp.ops = ops;
  object1->un_pager.devp.dev = handle;
  TAILQ_INIT(&object1->un_pager.devp.devp_pglist);
  mtx_lock(&dev_pager_mtx);
  object = vm_pager_object_lookup(&dev_pager_object_list, handle);
  if (object != ((void*)0)) {



   if (pindex > object->size)
    object->size = pindex;
   KASSERT(object->type == tp,
       ("Inconsistent device pager type %p %d",
       object, tp));
   KASSERT(object->un_pager.devp.ops == ops,
       ("Inconsistent devops %p %p", object, ops));
  } else {
   object = object1;
   object1 = ((void*)0);
   object->handle = handle;
   TAILQ_INSERT_TAIL(&dev_pager_object_list, object,
       pager_object_list);
   if (ops->cdev_pg_populate != ((void*)0))
    vm_object_set_flag(object, OBJ_POPULATE);
  }
 } else {
  if (pindex > object->size)
   object->size = pindex;
  KASSERT(object->type == tp,
      ("Inconsistent device pager type %p %d", object, tp));
 }
 mtx_unlock(&dev_pager_mtx);
 if (object1 != ((void*)0)) {
  object1->handle = object1;
  mtx_lock(&dev_pager_mtx);
  TAILQ_INSERT_TAIL(&dev_pager_object_list, object1,
      pager_object_list);
  mtx_unlock(&dev_pager_mtx);
  vm_object_deallocate(object1);
 }
 return (object);
}
