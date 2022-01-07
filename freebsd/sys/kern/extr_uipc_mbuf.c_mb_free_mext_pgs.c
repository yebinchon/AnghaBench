
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int vm_page_t ;
struct mbuf_ext_pgs {int npgs; int * pa; } ;
struct TYPE_2__ {struct mbuf_ext_pgs* ext_pgs; } ;
struct mbuf {TYPE_1__ m_ext; } ;


 int MBUF_EXT_PGS_ASSERT (struct mbuf*) ;
 int PHYS_TO_VM_PAGE (int ) ;
 int vm_page_free (int ) ;
 int vm_page_unwire_noq (int ) ;

void
mb_free_mext_pgs(struct mbuf *m)
{
 struct mbuf_ext_pgs *ext_pgs;
 vm_page_t pg;

 MBUF_EXT_PGS_ASSERT(m);
 ext_pgs = m->m_ext.ext_pgs;
 for (int i = 0; i < ext_pgs->npgs; i++) {
  pg = PHYS_TO_VM_PAGE(ext_pgs->pa[i]);
  vm_page_unwire_noq(pg);
  vm_page_free(pg);
 }
}
