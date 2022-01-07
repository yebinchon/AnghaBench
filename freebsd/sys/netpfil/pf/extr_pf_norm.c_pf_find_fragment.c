
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pf_fragment_cmp {int dummy; } ;
struct pf_fragment {int fr_timeout; } ;
struct pf_frag_tree {int dummy; } ;


 int PF_FRAG_ASSERT () ;
 struct pf_fragment* RB_FIND (int ,struct pf_frag_tree*,struct pf_fragment*) ;
 int TAILQ_INSERT_HEAD (int *,struct pf_fragment*,int ) ;
 int TAILQ_REMOVE (int *,struct pf_fragment*,int ) ;
 int V_pf_fragqueue ;
 int frag_next ;
 int pf_frag_tree ;
 int time_uptime ;

__attribute__((used)) static struct pf_fragment *
pf_find_fragment(struct pf_fragment_cmp *key, struct pf_frag_tree *tree)
{
 struct pf_fragment *frag;

 PF_FRAG_ASSERT();

 frag = RB_FIND(pf_frag_tree, tree, (struct pf_fragment *)key);
 if (frag != ((void*)0)) {

  frag->fr_timeout = time_uptime;
  TAILQ_REMOVE(&V_pf_fragqueue, frag, frag_next);
  TAILQ_INSERT_HEAD(&V_pf_fragqueue, frag, frag_next);
 }

 return (frag);
}
