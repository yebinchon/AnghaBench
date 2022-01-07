
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct mbuf {struct mbuf* m_next; } ;



uint32_t
xdma_mbuf_chain_count(struct mbuf *m0)
{
 struct mbuf *m;
 uint32_t c;

 c = 0;

 for (m = m0; m != ((void*)0); m = m->m_next)
  c++;

 return (c);
}
