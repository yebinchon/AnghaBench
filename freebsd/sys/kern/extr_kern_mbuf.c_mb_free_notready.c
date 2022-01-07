
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ ext_type; TYPE_1__* ext_pgs; } ;
struct mbuf {int m_flags; TYPE_2__ m_ext; } ;
struct TYPE_3__ {scalar_t__ nrdy; } ;


 scalar_t__ EXT_PGS ;
 int KASSERT (int,char*) ;
 int M_EXT ;
 struct mbuf* m_free (struct mbuf*) ;

void
mb_free_notready(struct mbuf *m, int count)
{
 int i;

 for (i = 0; i < count && m != ((void*)0); i++) {
  if ((m->m_flags & M_EXT) != 0 &&
      m->m_ext.ext_type == EXT_PGS) {
   m->m_ext.ext_pgs->nrdy--;
   if (m->m_ext.ext_pgs->nrdy != 0)
    continue;
  }
  m = m_free(m);
 }
 KASSERT(i == count, ("Removed only %d items from %p", i, m));
}
