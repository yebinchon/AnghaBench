
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* vm_object_t ;
struct TYPE_3__ {int flags; scalar_t__ shadow_count; scalar_t__ resident_page_count; int busy; int paging_in_progress; int ref_count; int rtree; int type; int lock; } ;


 int OBJT_DEAD ;
 int OBJ_DEAD ;
 int RW_DUPOK ;
 int RW_NEW ;
 int TAILQ_INSERT_TAIL (int *,TYPE_1__*,int ) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int object_list ;
 int refcount_init (int *,int ) ;
 int rw_init_flags (int *,char*,int) ;
 int vm_object_list ;
 int vm_object_list_mtx ;
 int vm_radix_init (int *) ;

__attribute__((used)) static int
vm_object_zinit(void *mem, int size, int flags)
{
 vm_object_t object;

 object = (vm_object_t)mem;
 rw_init_flags(&object->lock, "vm object", RW_DUPOK | RW_NEW);


 object->type = OBJT_DEAD;
 vm_radix_init(&object->rtree);
 refcount_init(&object->ref_count, 0);
 refcount_init(&object->paging_in_progress, 0);
 refcount_init(&object->busy, 0);
 object->resident_page_count = 0;
 object->shadow_count = 0;
 object->flags = OBJ_DEAD;

 mtx_lock(&vm_object_list_mtx);
 TAILQ_INSERT_TAIL(&vm_object_list, object, object_list);
 mtx_unlock(&vm_object_list_mtx);
 return (0);
}
