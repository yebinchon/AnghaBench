
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uma_zone_t ;
struct TYPE_2__ {void* ext_arg2; int ext_arg1; } ;
struct mbuf {TYPE_1__ m_ext; } ;


 int counter_u64_add (int ,int) ;
 int extfree_rels ;
 int uma_zfree (int ,void*) ;

__attribute__((used)) static void
rxb_free(struct mbuf *m)
{
 uma_zone_t zone = m->m_ext.ext_arg1;
 void *cl = m->m_ext.ext_arg2;

 uma_zfree(zone, cl);
 counter_u64_add(extfree_rels, 1);
}
