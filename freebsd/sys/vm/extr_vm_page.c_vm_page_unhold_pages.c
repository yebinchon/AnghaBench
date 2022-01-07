
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_page_t ;


 int PQ_ACTIVE ;
 int vm_page_unwire (int ,int ) ;

void
vm_page_unhold_pages(vm_page_t *ma, int count)
{

 for (; count != 0; count--) {
  vm_page_unwire(*ma, PQ_ACTIVE);
  ma++;
 }
}
