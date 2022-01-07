
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mbuf {struct mbuf* m_next; } ;



__attribute__((used)) static inline int ena_mbuf_count(struct mbuf *mbuf)
{
 int count = 1;

 while ((mbuf = mbuf->m_next) != ((void*)0))
  ++count;

 return count;
}
