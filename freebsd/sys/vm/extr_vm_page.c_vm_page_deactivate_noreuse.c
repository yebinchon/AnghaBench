
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* vm_page_t ;
struct TYPE_5__ {int oflags; int * object; } ;


 int KASSERT (int ,char*) ;
 int VPO_UNMANAGED ;
 int _vm_page_deactivate_noreuse (TYPE_1__*) ;
 int vm_page_wired (TYPE_1__*) ;

void
vm_page_deactivate_noreuse(vm_page_t m)
{

 KASSERT(m->object != ((void*)0),
     ("vm_page_deactivate_noreuse: page %p has no object", m));

 if ((m->oflags & VPO_UNMANAGED) == 0 && !vm_page_wired(m))
  _vm_page_deactivate_noreuse(m);
}
