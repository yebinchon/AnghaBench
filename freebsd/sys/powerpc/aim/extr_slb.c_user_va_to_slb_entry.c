
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int vm_offset_t ;
typedef int uint64_t ;
struct TYPE_4__ {struct slbtnode** ua_child; struct slb* slb_entries; } ;
struct slbtnode {scalar_t__ ua_base; scalar_t__ ua_level; TYPE_1__ u; } ;
struct slb {int slbe; } ;
typedef TYPE_2__* pmap_t ;
struct TYPE_5__ {struct slbtnode* pm_slb_tree_root; } ;


 int ADDR_SR_SHFT ;
 int KASSERT (int ,char*) ;
 int SLBE_VALID ;
 scalar_t__ UAD_LEAF_LEVEL ;
 scalar_t__ esid2base (int,scalar_t__) ;
 int esid2idx (int,scalar_t__) ;
 int uad_baseok (struct slbtnode*) ;

struct slb *
user_va_to_slb_entry(pmap_t pm, vm_offset_t va)
{
 uint64_t esid = va >> ADDR_SR_SHFT;
 struct slbtnode *ua;
 int idx;

 ua = pm->pm_slb_tree_root;

 for (;;) {
  KASSERT(uad_baseok(ua), ("uad base %016jx level %d bad!",
      ua->ua_base, ua->ua_level));
  idx = esid2idx(esid, ua->ua_level);





  if (ua->ua_level == UAD_LEAF_LEVEL)
   return ((ua->u.slb_entries[idx].slbe & SLBE_VALID) ?
       &ua->u.slb_entries[idx] : ((void*)0));







  ua = ua->u.ua_child[idx];
  if (ua == ((void*)0) ||
      esid2base(esid, ua->ua_level) != ua->ua_base)
   return (((void*)0));
 }

 return (((void*)0));
}
