
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_2__* vm_page_t ;
struct TYPE_5__ {int * pmap; int color; int tte_list; } ;
struct TYPE_6__ {TYPE_1__ md; } ;


 int DCACHE_COLOR (int ) ;
 int TAILQ_INIT (int *) ;
 int VM_PAGE_TO_PHYS (TYPE_2__*) ;

void
pmap_page_init(vm_page_t m)
{

 TAILQ_INIT(&m->md.tte_list);
 m->md.color = DCACHE_COLOR(VM_PAGE_TO_PHYS(m));
 m->md.pmap = ((void*)0);
}
