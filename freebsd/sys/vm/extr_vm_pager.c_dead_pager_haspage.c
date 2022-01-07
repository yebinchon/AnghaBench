
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_pindex_t ;
typedef int vm_object_t ;


 int FALSE ;

__attribute__((used)) static int
dead_pager_haspage(vm_object_t object, vm_pindex_t pindex, int *prev, int *next)
{

 if (prev != ((void*)0))
  *prev = 0;
 if (next != ((void*)0))
  *next = 0;
 return (FALSE);
}
