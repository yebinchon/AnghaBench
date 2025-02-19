
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef TYPE_3__* vm_page_t ;
struct uio {int uio_resid; } ;
struct mbuf_ext_pgs {int npgs; int last_pg_len; int * pa; int flags; } ;
struct TYPE_8__ {int len; } ;
struct TYPE_7__ {int ext_size; struct mbuf_ext_pgs* ext_pgs; } ;
struct mbuf {int m_len; TYPE_2__ m_pkthdr; TYPE_1__ m_ext; struct mbuf* m_next; } ;
typedef int ssize_t ;
struct TYPE_9__ {int flags; } ;


 int MBUF_EXT_PGS_ASSERT_SANITY (struct mbuf_ext_pgs*) ;
 int MBUF_PEXT_FLAG_ANON ;
 int MBUF_PEXT_MAX_PGS ;
 int MIN (int,int) ;
 int M_NOWAIT ;
 int M_PKTHDR ;
 int PAGE_SIZE ;
 int PG_ZERO ;
 int VM_ALLOC_NODUMP ;
 int VM_ALLOC_NOOBJ ;
 int VM_ALLOC_WIRED ;
 int VM_PAGE_TO_PHYS (TYPE_3__*) ;
 int m_freem (struct mbuf*) ;
 int malloc2vm_flags (int) ;
 struct mbuf* mb_alloc_ext_pgs (int,int,int ) ;
 int mb_free_mext_pgs ;
 int uiomove_fromphys (TYPE_3__**,int ,int,struct uio*) ;
 TYPE_3__* vm_page_alloc (int *,int ,int) ;
 int vm_wait (int *) ;

__attribute__((used)) static struct mbuf *
m_uiotombuf_nomap(struct uio *uio, int how, int len, int maxseg, int flags)
{
 struct mbuf *m, *mb, *prev;
 struct mbuf_ext_pgs *pgs;
 vm_page_t pg_array[MBUF_PEXT_MAX_PGS];
 int error, length, i, needed;
 ssize_t total;
 int pflags = malloc2vm_flags(how) | VM_ALLOC_NOOBJ | VM_ALLOC_NODUMP |
     VM_ALLOC_WIRED;





 if (len > 0)
  total = MIN(uio->uio_resid, len);
 else
  total = uio->uio_resid;

 if (maxseg == 0)
  maxseg = MBUF_PEXT_MAX_PGS * PAGE_SIZE;




 m = ((void*)0);
 while (total > 0) {
  mb = mb_alloc_ext_pgs(how, (flags & M_PKTHDR),
      mb_free_mext_pgs);
  if (mb == ((void*)0))
   goto failed;
  if (m == ((void*)0))
   m = mb;
  else
   prev->m_next = mb;
  prev = mb;
  pgs = mb->m_ext.ext_pgs;
  pgs->flags = MBUF_PEXT_FLAG_ANON;
  needed = length = MIN(maxseg, total);
  for (i = 0; needed > 0; i++, needed -= PAGE_SIZE) {
retry_page:
   pg_array[i] = vm_page_alloc(((void*)0), 0, pflags);
   if (pg_array[i] == ((void*)0)) {
    if (how & M_NOWAIT) {
     goto failed;
    } else {
     vm_wait(((void*)0));
     goto retry_page;
    }
   }
   pg_array[i]->flags &= ~PG_ZERO;
   pgs->pa[i] = VM_PAGE_TO_PHYS(pg_array[i]);
   pgs->npgs++;
  }
  pgs->last_pg_len = length - PAGE_SIZE * (pgs->npgs - 1);
  MBUF_EXT_PGS_ASSERT_SANITY(pgs);
  total -= length;
  error = uiomove_fromphys(pg_array, 0, length, uio);
  if (error != 0)
   goto failed;
  mb->m_len = length;
  mb->m_ext.ext_size += PAGE_SIZE * pgs->npgs;
  if (flags & M_PKTHDR)
   m->m_pkthdr.len += length;
 }
 return (m);

failed:
 m_freem(m);
 return (((void*)0));
}
