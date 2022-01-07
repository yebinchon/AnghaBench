
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pf_frent {scalar_t__ fe_len; scalar_t__ fe_hdrlen; struct mbuf* fe_m; } ;
struct pf_fragment {int fr_queue; } ;
struct TYPE_2__ {scalar_t__ len; } ;
struct mbuf {TYPE_1__ m_pkthdr; } ;


 struct pf_frent* TAILQ_FIRST (int *) ;
 struct pf_frent* TAILQ_NEXT (struct pf_frent*,int ) ;
 int V_pf_frent_z ;
 int fr_next ;
 int m_adj (struct mbuf*,scalar_t__) ;
 int m_cat (struct mbuf*,struct mbuf*) ;
 int pf_remove_fragment (struct pf_fragment*) ;
 int uma_zfree (int ,struct pf_frent*) ;

__attribute__((used)) static struct mbuf *
pf_join_fragment(struct pf_fragment *frag)
{
 struct mbuf *m, *m2;
 struct pf_frent *frent, *next;

 frent = TAILQ_FIRST(&frag->fr_queue);
 next = TAILQ_NEXT(frent, fr_next);

 m = frent->fe_m;
 m_adj(m, (frent->fe_hdrlen + frent->fe_len) - m->m_pkthdr.len);
 uma_zfree(V_pf_frent_z, frent);
 for (frent = next; frent != ((void*)0); frent = next) {
  next = TAILQ_NEXT(frent, fr_next);

  m2 = frent->fe_m;

  m_adj(m2, frent->fe_hdrlen);

  m_adj(m2, frent->fe_len - m2->m_pkthdr.len);

  uma_zfree(V_pf_frent_z, frent);
  m_cat(m, m2);
 }


 pf_remove_fragment(frag);

 return (m);
}
