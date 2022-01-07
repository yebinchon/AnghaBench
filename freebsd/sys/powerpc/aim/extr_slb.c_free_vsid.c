
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_7__ {struct slbtnode** ua_child; TYPE_1__* slb_entries; } ;
struct slbtnode {scalar_t__ ua_base; scalar_t__ ua_level; TYPE_2__ u; int ua_alloc; } ;
typedef TYPE_3__* pmap_t ;
struct TYPE_8__ {struct slbtnode* pm_slb_tree_root; } ;
struct TYPE_6__ {scalar_t__ slbe; scalar_t__ slbv; } ;


 int KASSERT (int ,char*) ;
 int MA_OWNED ;
 int PMAP_LOCK_ASSERT (TYPE_3__*,int ) ;
 scalar_t__ UAD_LEAF_LEVEL ;
 int clrbit (int *,int) ;
 int eieio () ;
 scalar_t__ esid2base (int ,scalar_t__) ;
 int esid2idx (int ,scalar_t__) ;
 int uad_baseok (struct slbtnode*) ;

void
free_vsid(pmap_t pm, uint64_t esid, int large)
{
 struct slbtnode *ua;
 int idx;

 PMAP_LOCK_ASSERT(pm, MA_OWNED);

 ua = pm->pm_slb_tree_root;

 for (;;) {
  KASSERT(uad_baseok(ua),
     ("uad base %09jx level %d bad!", ua->ua_base, ua->ua_level));

  idx = esid2idx(esid, ua->ua_level);
  if (ua->ua_level == UAD_LEAF_LEVEL) {
   ua->u.slb_entries[idx].slbv = 0;
   eieio();
   ua->u.slb_entries[idx].slbe = 0;
   clrbit(&ua->ua_alloc, idx);
   return;
  }

  ua = ua->u.ua_child[idx];
  if (ua == ((void*)0) ||
      esid2base(esid, ua->ua_level) != ua->ua_base) {

   KASSERT(0,
       ("Asked to remove an entry that was never inserted!"));
   return;
  }
 }
}
