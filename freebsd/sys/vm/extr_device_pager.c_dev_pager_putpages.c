
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_page_t ;
typedef int vm_object_t ;


 int panic (char*) ;

__attribute__((used)) static void
dev_pager_putpages(vm_object_t object, vm_page_t *m, int count, int flags,
    int *rtvals)
{

 panic("dev_pager_putpage called");
}
