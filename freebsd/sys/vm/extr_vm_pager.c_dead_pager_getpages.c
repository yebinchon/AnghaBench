
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_page_t ;
typedef int vm_object_t ;


 int VM_PAGER_FAIL ;

__attribute__((used)) static int
dead_pager_getpages(vm_object_t obj, vm_page_t *ma, int count, int *rbehind,
    int *rahead)
{

 return (VM_PAGER_FAIL);
}
