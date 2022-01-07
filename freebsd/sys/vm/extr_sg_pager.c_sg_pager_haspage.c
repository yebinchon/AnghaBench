
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_pindex_t ;
typedef int vm_object_t ;
typedef int boolean_t ;


 int TRUE ;

__attribute__((used)) static boolean_t
sg_pager_haspage(vm_object_t object, vm_pindex_t pindex, int *before,
    int *after)
{

 if (before != ((void*)0))
  *before = 0;
 if (after != ((void*)0))
  *after = 0;
 return (TRUE);
}
