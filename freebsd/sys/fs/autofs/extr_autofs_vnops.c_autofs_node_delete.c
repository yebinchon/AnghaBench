
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct autofs_node {int an_name; int an_vnode_lock; int an_children; struct autofs_node* an_parent; int an_callout; int an_mount; } ;


 int AUTOFS_ASSERT_XLOCKED (int ) ;
 int KASSERT (int ,char*) ;
 int M_AUTOFS ;
 int RB_EMPTY (int *) ;
 int RB_REMOVE (int ,int *,struct autofs_node*) ;
 int autofs_node_tree ;
 int autofs_node_zone ;
 int callout_drain (int *) ;
 int free (int ,int ) ;
 int sx_destroy (int *) ;
 int uma_zfree (int ,struct autofs_node*) ;

void
autofs_node_delete(struct autofs_node *anp)
{
 struct autofs_node *parent;

 AUTOFS_ASSERT_XLOCKED(anp->an_mount);
 KASSERT(RB_EMPTY(&anp->an_children), ("have children"));

 callout_drain(&anp->an_callout);

 parent = anp->an_parent;
 if (parent != ((void*)0))
  RB_REMOVE(autofs_node_tree, &parent->an_children, anp);
 sx_destroy(&anp->an_vnode_lock);
 free(anp->an_name, M_AUTOFS);
 uma_zfree(autofs_node_zone, anp);
}
