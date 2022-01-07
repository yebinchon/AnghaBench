
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mbuf {int dummy; } ;


 int MBUF_PROBE1 (int ,struct mbuf*) ;
 int m__freem ;
 struct mbuf* m_free (struct mbuf*) ;

void
m_freem(struct mbuf *mb)
{

 MBUF_PROBE1(m__freem, mb);
 while (mb != ((void*)0))
  mb = m_free(mb);
}
