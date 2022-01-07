
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;


 scalar_t__ counter_u64_fetch (int ) ;
 int extfree_refs ;
 int extfree_rels ;

uint64_t
t4_sge_extfree_refs(void)
{
 uint64_t refs, rels;

 rels = counter_u64_fetch(extfree_rels);
 refs = counter_u64_fetch(extfree_refs);

 return (refs - rels);
}
