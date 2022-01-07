
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int counter_u64_free (int ) ;
 int extfree_refs ;
 int extfree_rels ;

void
t4_sge_modunload(void)
{

 counter_u64_free(extfree_refs);
 counter_u64_free(extfree_rels);
}
