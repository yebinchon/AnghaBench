
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* slb_entries; struct slbtnode** ua_child; } ;
struct slbtnode {scalar_t__ ua_level; TYPE_2__ u; } ;
struct TYPE_3__ {int slbv; } ;


 int SLBV_VSID_SHIFT ;
 scalar_t__ UAD_LEAF_LEVEL ;
 int moea64_release_vsid (int) ;
 int slbt_zone ;
 int uma_zfree (int ,struct slbtnode*) ;

__attribute__((used)) static void
free_slb_tree_node(struct slbtnode *ua)
{
 int idx;

 for (idx = 0; idx < 16; idx++) {
  if (ua->ua_level != UAD_LEAF_LEVEL) {
   if (ua->u.ua_child[idx] != ((void*)0))
    free_slb_tree_node(ua->u.ua_child[idx]);
  } else {
   if (ua->u.slb_entries[idx].slbv != 0)
    moea64_release_vsid(ua->u.slb_entries[idx].slbv
        >> SLBV_VSID_SHIFT);
  }
 }

 uma_zfree(slbt_zone, ua);
}
