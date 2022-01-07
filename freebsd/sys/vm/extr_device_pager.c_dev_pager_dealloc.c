
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int * vm_page_t ;
typedef TYPE_4__* vm_object_t ;
struct TYPE_12__ {int devp_pglist; int dev; TYPE_1__* ops; } ;
struct TYPE_11__ {TYPE_3__ devp; } ;
struct TYPE_13__ {scalar_t__ type; int * handle; TYPE_2__ un_pager; } ;
struct TYPE_10__ {int (* cdev_pg_dtor ) (int ) ;} ;


 scalar_t__ OBJT_DEAD ;
 scalar_t__ OBJT_DEVICE ;
 int * TAILQ_FIRST (int *) ;
 int TAILQ_REMOVE (int *,TYPE_4__*,int ) ;
 int VM_OBJECT_WLOCK (TYPE_4__*) ;
 int VM_OBJECT_WUNLOCK (TYPE_4__*) ;
 int dev_pager_free_page (TYPE_4__*,int *) ;
 int dev_pager_mtx ;
 int dev_pager_object_list ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int pager_object_list ;
 int stub1 (int ) ;

__attribute__((used)) static void
dev_pager_dealloc(vm_object_t object)
{
 vm_page_t m;

 VM_OBJECT_WUNLOCK(object);
 object->un_pager.devp.ops->cdev_pg_dtor(object->un_pager.devp.dev);

 mtx_lock(&dev_pager_mtx);
 TAILQ_REMOVE(&dev_pager_object_list, object, pager_object_list);
 mtx_unlock(&dev_pager_mtx);
 VM_OBJECT_WLOCK(object);

 if (object->type == OBJT_DEVICE) {



  while ((m = TAILQ_FIRST(&object->un_pager.devp.devp_pglist))
      != ((void*)0))
   dev_pager_free_page(object, m);
 }
 object->handle = ((void*)0);
 object->type = OBJT_DEAD;
}
