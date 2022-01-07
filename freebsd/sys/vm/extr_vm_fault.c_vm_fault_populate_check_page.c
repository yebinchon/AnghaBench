
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * vm_page_t ;


 int MPASS (int ) ;
 int vm_page_all_valid (int *) ;
 int vm_page_xbusied (int *) ;

__attribute__((used)) static void
vm_fault_populate_check_page(vm_page_t m)
{






 MPASS(m != ((void*)0));
 MPASS(vm_page_all_valid(m));
 MPASS(vm_page_xbusied(m));
}
