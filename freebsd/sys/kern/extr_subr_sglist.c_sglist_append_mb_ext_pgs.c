
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sglist {int dummy; } ;
struct TYPE_2__ {int ext_pgs; } ;
struct mbuf {int m_len; TYPE_1__ m_ext; } ;


 int MBUF_EXT_PGS_ASSERT (struct mbuf*) ;
 int mtod (struct mbuf*,int ) ;
 int sglist_append_ext_pgs (struct sglist*,int ,int ,int ) ;
 int vm_offset_t ;

int
sglist_append_mb_ext_pgs(struct sglist *sg, struct mbuf *m)
{


 MBUF_EXT_PGS_ASSERT(m);
 return (sglist_append_ext_pgs(sg, m->m_ext.ext_pgs,
     mtod(m, vm_offset_t), m->m_len));
}
