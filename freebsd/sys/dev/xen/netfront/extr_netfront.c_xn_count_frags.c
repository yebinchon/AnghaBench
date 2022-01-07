
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mbuf {struct mbuf* m_next; } ;



__attribute__((used)) static inline int
xn_count_frags(struct mbuf *m)
{
 int nfrags;

 for (nfrags = 0; m != ((void*)0); m = m->m_next)
  nfrags++;

 return (nfrags);
}
