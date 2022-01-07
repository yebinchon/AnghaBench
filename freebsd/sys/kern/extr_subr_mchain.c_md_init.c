
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mdchain {int dummy; } ;
struct mbuf {scalar_t__ m_len; } ;


 int MT_DATA ;
 int M_WAITOK ;
 struct mbuf* m_gethdr (int ,int ) ;
 int md_initm (struct mdchain*,struct mbuf*) ;

int
md_init(struct mdchain *mdp)
{
 struct mbuf *m;

 m = m_gethdr(M_WAITOK, MT_DATA);
 m->m_len = 0;
 md_initm(mdp, m);
 return (0);
}
