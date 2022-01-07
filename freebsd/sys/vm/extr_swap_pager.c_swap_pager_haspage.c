
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_pindex_t ;
typedef int vm_object_t ;
typedef int daddr_t ;
typedef int boolean_t ;


 int FALSE ;
 int SWAPBLK_NONE ;
 int SWB_NPAGES ;
 int TRUE ;
 int VM_OBJECT_ASSERT_LOCKED (int ) ;
 int swp_pager_meta_ctl (int ,int,int ) ;

__attribute__((used)) static boolean_t
swap_pager_haspage(vm_object_t object, vm_pindex_t pindex, int *before,
    int *after)
{
 daddr_t blk, blk0;
 int i;

 VM_OBJECT_ASSERT_LOCKED(object);




 blk0 = swp_pager_meta_ctl(object, pindex, 0);
 if (blk0 == SWAPBLK_NONE) {
  if (before)
   *before = 0;
  if (after)
   *after = 0;
  return (FALSE);
 }




 if (before != ((void*)0)) {
  for (i = 1; i < SWB_NPAGES; i++) {
   if (i > pindex)
    break;
   blk = swp_pager_meta_ctl(object, pindex - i, 0);
   if (blk != blk0 - i)
    break;
  }
  *before = i - 1;
 }




 if (after != ((void*)0)) {
  for (i = 1; i < SWB_NPAGES; i++) {
   blk = swp_pager_meta_ctl(object, pindex + i, 0);
   if (blk != blk0 + i)
    break;
  }
  *after = i - 1;
 }
 return (TRUE);
}
