
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mbuf {int m_flags; struct mbuf* m_next; } ;


 int M_NOTREADY ;
 int M_PROTOFLAGS ;
 int PRUS_NOTREADY ;

__attribute__((used)) static void
sbm_clrprotoflags(struct mbuf *m, int flags)
{
 int mask;

 mask = ~M_PROTOFLAGS;
 if (flags & PRUS_NOTREADY)
  mask |= M_NOTREADY;
 while (m) {
  m->m_flags &= mask;
  m = m->m_next;
 }
}
