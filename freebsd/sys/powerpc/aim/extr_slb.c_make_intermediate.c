
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct TYPE_2__ {struct slbtnode** ua_child; } ;
struct slbtnode {int ua_level; scalar_t__ ua_base; int ua_alloc; TYPE_1__ u; } ;


 int KASSERT (int,char*) ;
 int M_NOWAIT ;
 int M_ZERO ;
 scalar_t__ esid2base (scalar_t__,int) ;
 int esid2idx (scalar_t__,int) ;
 int powerpc_lwsync () ;
 int setbit (int *,int) ;
 int slbt_zone ;
 struct slbtnode* uma_zalloc (int ,int) ;

__attribute__((used)) static struct slbtnode*
make_intermediate(uint64_t esid, struct slbtnode *parent)
{
 struct slbtnode *child, *inter;
 int idx, level;

 idx = esid2idx(esid, parent->ua_level);
 child = parent->u.ua_child[idx];
 KASSERT(esid2base(esid, child->ua_level) != child->ua_base,
     ("No need for an intermediate node?"));






 level = child->ua_level + 1;
 while (esid2base(esid, level) !=
     esid2base(child->ua_base, level))
  level++;
 KASSERT(level < parent->ua_level,
     ("Found splitting level %d for %09jx and %09jx, "
     "but it's the same as %p's",
     level, esid, child->ua_base, parent));


 inter = uma_zalloc(slbt_zone, M_NOWAIT | M_ZERO);
 KASSERT(inter != ((void*)0), ("unhandled NULL case"));


 inter->ua_level = level;
 inter->ua_base = esid2base(esid, inter->ua_level);
 idx = esid2idx(child->ua_base, inter->ua_level);
 inter->u.ua_child[idx] = child;
 setbit(&inter->ua_alloc, idx);
 powerpc_lwsync();


 idx = esid2idx(inter->ua_base, parent->ua_level);
 parent->u.ua_child[idx] = inter;
 setbit(&parent->ua_alloc, idx);

 return (inter);
}
