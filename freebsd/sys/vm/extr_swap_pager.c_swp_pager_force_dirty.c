
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_1__ ;


typedef TYPE_1__* vm_page_t ;
struct TYPE_10__ {scalar_t__ queue; } ;


 scalar_t__ PQ_NONE ;
 int panic (char*,TYPE_1__*) ;
 int swap_pager_unswapped (TYPE_1__*) ;
 int vm_page_dirty (TYPE_1__*) ;
 int vm_page_lock (TYPE_1__*) ;
 int vm_page_unlock (TYPE_1__*) ;
 int vm_page_wired (TYPE_1__*) ;
 int vm_page_xunbusy (TYPE_1__*) ;

__attribute__((used)) static void
swp_pager_force_dirty(vm_page_t m)
{

 vm_page_dirty(m);






 vm_page_xunbusy(m);
 swap_pager_unswapped(m);
}
