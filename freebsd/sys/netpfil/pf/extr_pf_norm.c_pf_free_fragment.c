
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pf_frent {int fe_m; } ;
struct pf_fragment {int fr_queue; } ;


 int PF_FRAG_ASSERT () ;
 struct pf_frent* TAILQ_FIRST (int *) ;
 int TAILQ_REMOVE (int *,struct pf_frent*,int ) ;
 int V_pf_frent_z ;
 int fr_next ;
 int m_freem (int ) ;
 int pf_remove_fragment (struct pf_fragment*) ;
 int uma_zfree (int ,struct pf_frent*) ;

__attribute__((used)) static void
pf_free_fragment(struct pf_fragment *frag)
{
 struct pf_frent *frent;

 PF_FRAG_ASSERT();


 for (frent = TAILQ_FIRST(&frag->fr_queue); frent;
     frent = TAILQ_FIRST(&frag->fr_queue)) {
  TAILQ_REMOVE(&frag->fr_queue, frent, fr_next);

  m_freem(frent->fe_m);
  uma_zfree(V_pf_frent_z, frent);
 }

 pf_remove_fragment(frag);
}
