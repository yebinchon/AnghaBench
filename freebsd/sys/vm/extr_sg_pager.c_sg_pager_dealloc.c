
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int vm_page_t ;
typedef TYPE_3__* vm_object_t ;
struct sglist {int dummy; } ;
struct TYPE_9__ {int q; } ;
struct TYPE_6__ {int sgp_pglist; } ;
struct TYPE_7__ {TYPE_1__ sgp; } ;
struct TYPE_8__ {int type; struct sglist* handle; TYPE_2__ un_pager; } ;


 int OBJT_DEAD ;
 int TAILQ_FIRST (int *) ;
 int TAILQ_REMOVE (int *,int ,int ) ;
 TYPE_5__ plinks ;
 int sglist_free (struct sglist*) ;
 int vm_page_putfake (int ) ;

__attribute__((used)) static void
sg_pager_dealloc(vm_object_t object)
{
 struct sglist *sg;
 vm_page_t m;




 while ((m = TAILQ_FIRST(&object->un_pager.sgp.sgp_pglist)) != 0) {
  TAILQ_REMOVE(&object->un_pager.sgp.sgp_pglist, m, plinks.q);
  vm_page_putfake(m);
 }

 sg = object->handle;
 sglist_free(sg);
 object->handle = ((void*)0);
 object->type = OBJT_DEAD;
}
