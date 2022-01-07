
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pf_mtag {int dummy; } ;
struct m_tag {int m_tag_len; int m_tag_free; int m_tag_id; int m_tag_cookie; } ;


 int MTAG_ABI_COMPAT ;
 int PACKET_TAG_PF ;
 int pf_mtag_free ;

__attribute__((used)) static int
pf_mtag_uminit(void *mem, int size, int how)
{
 struct m_tag *t;

 t = (struct m_tag *)mem;
 t->m_tag_cookie = MTAG_ABI_COMPAT;
 t->m_tag_id = PACKET_TAG_PF;
 t->m_tag_len = sizeof(struct pf_mtag);
 t->m_tag_free = pf_mtag_free;

 return (0);
}
