
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ ext_size; } ;
struct mbuf {int m_flags; TYPE_1__ m_ext; struct mbuf* m_next; } ;


 int MSIZE ;
 int M_EXT ;

__attribute__((used)) static int
tcp_reass_overhead_of_chain(struct mbuf *m, struct mbuf **mlast)
{
 int len = MSIZE;

 if (m->m_flags & M_EXT)
  len += m->m_ext.ext_size;
 while (m->m_next != ((void*)0)) {
  m = m->m_next;
  len += MSIZE;
  if (m->m_flags & M_EXT)
   len += m->m_ext.ext_size;
 }
 *mlast = m;
 return (len);
}
