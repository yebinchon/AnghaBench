
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_page_t ;
typedef int vm_object_t ;


 int VM_PAGER_AGAIN ;

__attribute__((used)) static void
dead_pager_putpages(vm_object_t object, vm_page_t *m, int count,
    int flags, int *rtvals)
{
 int i;

 for (i = 0; i < count; i++)
  rtvals[i] = VM_PAGER_AGAIN;
}
