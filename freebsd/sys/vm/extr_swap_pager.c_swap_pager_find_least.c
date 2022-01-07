
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int vm_pindex_t ;
typedef TYPE_3__* vm_object_t ;
struct swblk {int p; scalar_t__* d; } ;
struct TYPE_6__ {int swp_blks; } ;
struct TYPE_7__ {TYPE_1__ swp; } ;
struct TYPE_8__ {scalar_t__ type; int size; TYPE_2__ un_pager; } ;


 int MPASS (int ) ;
 scalar_t__ OBJT_SWAP ;
 scalar_t__ SWAPBLK_NONE ;
 int SWAP_META_PAGES ;
 struct swblk* SWAP_PCTRIE_LOOKUP_GE (int *,int ) ;
 int VM_OBJECT_ASSERT_LOCKED (TYPE_3__*) ;
 int rounddown (int,int) ;
 int roundup (int,int) ;

vm_pindex_t
swap_pager_find_least(vm_object_t object, vm_pindex_t pindex)
{
 struct swblk *sb;
 int i;

 VM_OBJECT_ASSERT_LOCKED(object);
 if (object->type != OBJT_SWAP)
  return (object->size);

 sb = SWAP_PCTRIE_LOOKUP_GE(&object->un_pager.swp.swp_blks,
     rounddown(pindex, SWAP_META_PAGES));
 if (sb == ((void*)0))
  return (object->size);
 if (sb->p < pindex) {
  for (i = pindex % SWAP_META_PAGES; i < SWAP_META_PAGES; i++) {
   if (sb->d[i] != SWAPBLK_NONE)
    return (sb->p + i);
  }
  sb = SWAP_PCTRIE_LOOKUP_GE(&object->un_pager.swp.swp_blks,
      roundup(pindex, SWAP_META_PAGES));
  if (sb == ((void*)0))
   return (object->size);
 }
 for (i = 0; i < SWAP_META_PAGES; i++) {
  if (sb->d[i] != SWAPBLK_NONE)
   return (sb->p + i);
 }





 MPASS(0);
 return (object->size);
}
