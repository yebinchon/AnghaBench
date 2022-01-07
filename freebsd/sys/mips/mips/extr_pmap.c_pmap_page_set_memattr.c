
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_2__* vm_page_t ;
typedef int vm_memattr_t ;
struct TYPE_4__ {int pv_flags; int pv_list; } ;
struct TYPE_5__ {TYPE_1__ md; } ;


 int PV_MEMATTR_MASK ;
 int PV_MEMATTR_SHIFT ;
 int * TAILQ_FIRST (int *) ;
 int panic (char*) ;

void
pmap_page_set_memattr(vm_page_t m, vm_memattr_t ma)
{
 if (TAILQ_FIRST(&m->md.pv_list) != ((void*)0))
  panic("Can't change memattr on page with existing mappings");


 m->md.pv_flags &= ~PV_MEMATTR_MASK;
 m->md.pv_flags |= (ma << PV_MEMATTR_SHIFT) & PV_MEMATTR_MASK;
}
