
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_page_t ;


 int swap_pager_unswapped (int ) ;
 int vm_page_dirty (int ) ;
 int vm_page_launder (int ) ;
 int vm_page_lock (int ) ;
 int vm_page_unlock (int ) ;
 int vm_page_xunbusy (int ) ;

__attribute__((used)) static void
swp_pager_force_launder(vm_page_t m)
{

 vm_page_dirty(m);
 vm_page_lock(m);
 vm_page_launder(m);
 vm_page_unlock(m);
 vm_page_xunbusy(m);
 swap_pager_unswapped(m);
}
