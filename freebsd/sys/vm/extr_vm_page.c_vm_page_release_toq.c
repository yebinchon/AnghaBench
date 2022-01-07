
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


typedef TYPE_1__* vm_page_t ;
struct TYPE_8__ {scalar_t__ valid; } ;


 int PQ_INACTIVE ;
 int VPR_NOREUSE ;
 int VPR_TRYFREE ;
 int _vm_page_deactivate_noreuse (TYPE_1__*) ;
 scalar_t__ vm_page_active (TYPE_1__*) ;
 int vm_page_assert_locked (TYPE_1__*) ;
 int vm_page_mvqueue (TYPE_1__*,int ) ;
 int vm_page_reference (TYPE_1__*) ;

__attribute__((used)) static void
vm_page_release_toq(vm_page_t m, int flags)
{

 vm_page_assert_locked(m);
 if ((flags & (VPR_TRYFREE | VPR_NOREUSE)) != 0 || m->valid == 0)
  _vm_page_deactivate_noreuse(m);
 else if (vm_page_active(m))
  vm_page_reference(m);
 else
  vm_page_mvqueue(m, PQ_INACTIVE);
}
