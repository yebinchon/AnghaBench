
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef size_t vm_pindex_t ;
typedef TYPE_3__* vm_object_t ;
struct swblk {scalar_t__* d; } ;
typedef scalar_t__ daddr_t ;
struct TYPE_9__ {int swp_blks; } ;
struct TYPE_8__ {TYPE_2__ swp; } ;
struct TYPE_10__ {scalar_t__ type; TYPE_1__ un_pager; } ;


 scalar_t__ OBJT_SWAP ;
 scalar_t__ SWAPBLK_NONE ;
 size_t SWAP_META_PAGES ;
 struct swblk* SWAP_PCTRIE_LOOKUP (int *,int ) ;
 int SWM_POP ;
 int VM_OBJECT_ASSERT_LOCKED (TYPE_3__*) ;
 int VM_OBJECT_ASSERT_WLOCKED (TYPE_3__*) ;
 int rounddown (size_t,size_t) ;
 int swp_pager_free_empty_swblk (TYPE_3__*,struct swblk*) ;

__attribute__((used)) static daddr_t
swp_pager_meta_ctl(vm_object_t object, vm_pindex_t pindex, int flags)
{
 struct swblk *sb;
 daddr_t r1;

 if ((flags & SWM_POP) != 0)
  VM_OBJECT_ASSERT_WLOCKED(object);
 else
  VM_OBJECT_ASSERT_LOCKED(object);





 if (object->type != OBJT_SWAP)
  return (SWAPBLK_NONE);

 sb = SWAP_PCTRIE_LOOKUP(&object->un_pager.swp.swp_blks,
     rounddown(pindex, SWAP_META_PAGES));
 if (sb == ((void*)0))
  return (SWAPBLK_NONE);
 r1 = sb->d[pindex % SWAP_META_PAGES];
 if (r1 == SWAPBLK_NONE)
  return (SWAPBLK_NONE);
 if ((flags & SWM_POP) != 0) {
  sb->d[pindex % SWAP_META_PAGES] = SWAPBLK_NONE;
  swp_pager_free_empty_swblk(object, sb);
 }
 return (r1);
}
