
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_2__* vm_page_t ;
struct TYPE_4__ {int pv_flags; int pv_list; } ;
struct TYPE_5__ {TYPE_1__ md; } ;


 int PV_MEMATTR_SHIFT ;
 int TAILQ_INIT (int *) ;
 int VM_MEMATTR_DEFAULT ;

void
pmap_page_init(vm_page_t m)
{

 TAILQ_INIT(&m->md.pv_list);
 m->md.pv_flags = VM_MEMATTR_DEFAULT << PV_MEMATTR_SHIFT;
}
