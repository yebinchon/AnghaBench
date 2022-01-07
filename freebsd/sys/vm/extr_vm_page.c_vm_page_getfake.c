
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_page_t ;
typedef int vm_paddr_t ;
typedef int vm_memattr_t ;


 int M_WAITOK ;
 int M_ZERO ;
 int fakepg_zone ;
 int uma_zalloc (int ,int) ;
 int vm_page_initfake (int ,int ,int ) ;

vm_page_t
vm_page_getfake(vm_paddr_t paddr, vm_memattr_t memattr)
{
 vm_page_t m;

 m = uma_zalloc(fakepg_zone, M_WAITOK | M_ZERO);
 vm_page_initfake(m, paddr, memattr);
 return (m);
}
