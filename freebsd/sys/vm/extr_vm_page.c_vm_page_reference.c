
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_page_t ;


 int PGA_REFERENCED ;
 int vm_page_aflag_set (int ,int ) ;

void
vm_page_reference(vm_page_t m)
{

 vm_page_aflag_set(m, PGA_REFERENCED);
}
