
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_3__* vm_object_t ;
struct swblk {int p; } ;
struct TYPE_5__ {int swp_blks; } ;
struct TYPE_6__ {TYPE_1__ swp; } ;
struct TYPE_7__ {TYPE_2__ un_pager; } ;


 int SWAP_META_PAGES ;
 int SWAP_PCTRIE_REMOVE (int *,int ) ;
 int swblk_zone ;
 scalar_t__ swp_pager_swblk_empty (struct swblk*,int ,int ) ;
 int uma_zfree (int ,struct swblk*) ;

__attribute__((used)) static void
swp_pager_free_empty_swblk(vm_object_t object, struct swblk *sb)
{

 if (swp_pager_swblk_empty(sb, 0, SWAP_META_PAGES)) {
  SWAP_PCTRIE_REMOVE(&object->un_pager.swp.swp_blks, sb->p);
  uma_zfree(swblk_zone, sb);
 }
}
