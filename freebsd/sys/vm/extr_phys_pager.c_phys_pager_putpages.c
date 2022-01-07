
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_page_t ;
typedef int vm_object_t ;
typedef int boolean_t ;


 int panic (char*) ;

__attribute__((used)) static void
phys_pager_putpages(vm_object_t object, vm_page_t *m, int count, boolean_t sync,
    int *rtvals)
{

 panic("phys_pager_putpage called");
}
