
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mbuf {scalar_t__ m_len; } ;
struct mbchain {int dummy; } ;


 int MT_DATA ;
 int M_WAITOK ;
 struct mbuf* m_gethdr (int ,int ) ;
 int mb_initm (struct mbchain*,struct mbuf*) ;

int
mb_init(struct mbchain *mbp)
{
 struct mbuf *m;

 m = m_gethdr(M_WAITOK, MT_DATA);
 m->m_len = 0;
 mb_initm(mbp, m);
 return (0);
}
