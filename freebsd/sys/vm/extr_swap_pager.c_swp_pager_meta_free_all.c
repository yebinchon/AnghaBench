
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ vm_pindex_t ;
typedef TYPE_3__* vm_object_t ;
struct swblk {scalar_t__* d; scalar_t__ p; } ;
typedef int daddr_t ;
struct TYPE_6__ {int swp_blks; } ;
struct TYPE_7__ {TYPE_1__ swp; } ;
struct TYPE_8__ {scalar_t__ type; TYPE_2__ un_pager; } ;


 scalar_t__ OBJT_SWAP ;
 scalar_t__ SWAPBLK_NONE ;
 int SWAP_META_PAGES ;
 struct swblk* SWAP_PCTRIE_LOOKUP_GE (int *,scalar_t__) ;
 int SWAP_PCTRIE_REMOVE (int *,scalar_t__) ;
 int VM_OBJECT_ASSERT_WLOCKED (TYPE_3__*) ;
 int swblk_zone ;
 int swp_pager_freeswapspace (int ,int ) ;
 int swp_pager_init_freerange (int *,int *) ;
 int swp_pager_update_freerange (int *,int *,scalar_t__) ;
 int uma_zfree (int ,struct swblk*) ;

__attribute__((used)) static void
swp_pager_meta_free_all(vm_object_t object)
{
 struct swblk *sb;
 daddr_t n_free, s_free;
 vm_pindex_t pindex;
 int i;

 VM_OBJECT_ASSERT_WLOCKED(object);
 if (object->type != OBJT_SWAP)
  return;

 swp_pager_init_freerange(&s_free, &n_free);
 for (pindex = 0; (sb = SWAP_PCTRIE_LOOKUP_GE(
     &object->un_pager.swp.swp_blks, pindex)) != ((void*)0);) {
  pindex = sb->p + SWAP_META_PAGES;
  for (i = 0; i < SWAP_META_PAGES; i++) {
   if (sb->d[i] == SWAPBLK_NONE)
    continue;
   swp_pager_update_freerange(&s_free, &n_free, sb->d[i]);
  }
  SWAP_PCTRIE_REMOVE(&object->un_pager.swp.swp_blks, sb->p);
  uma_zfree(swblk_zone, sb);
 }
 swp_pager_freeswapspace(s_free, n_free);
}
