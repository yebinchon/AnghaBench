
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pf_fragment {int dummy; } ;


 int KASSERT (struct pf_fragment*,char*) ;
 int PF_FRAG_ASSERT () ;
 int RB_REMOVE (int ,int *,struct pf_fragment*) ;
 int TAILQ_REMOVE (int *,struct pf_fragment*,int ) ;
 int V_pf_frag_tree ;
 int V_pf_frag_z ;
 int V_pf_fragqueue ;
 int frag_next ;
 int pf_frag_tree ;
 int uma_zfree (int ,struct pf_fragment*) ;

__attribute__((used)) static void
pf_remove_fragment(struct pf_fragment *frag)
{

 PF_FRAG_ASSERT();
 KASSERT(frag, ("frag != NULL"));

 RB_REMOVE(pf_frag_tree, &V_pf_frag_tree, frag);
 TAILQ_REMOVE(&V_pf_fragqueue, frag, frag_next);
 uma_zfree(V_pf_frag_z, frag);
}
