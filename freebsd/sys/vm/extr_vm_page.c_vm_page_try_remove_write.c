
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_page_t ;


 int pmap_remove_write ;
 int vm_page_try_blocked_op (int ,int ) ;

bool
vm_page_try_remove_write(vm_page_t m)
{

 return (vm_page_try_blocked_op(m, pmap_remove_write));
}
