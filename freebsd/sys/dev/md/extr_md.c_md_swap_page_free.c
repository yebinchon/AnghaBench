
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_page_t ;


 int vm_page_free (int ) ;
 int vm_page_xunbusy (int ) ;

__attribute__((used)) static void
md_swap_page_free(vm_page_t m)
{

 vm_page_xunbusy(m);
 vm_page_free(m);
}
