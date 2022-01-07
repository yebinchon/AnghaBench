
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct autofs_node {int an_children; struct autofs_mount* an_mount; struct autofs_node* an_parent; int an_ctime; int an_vnode_lock; int an_callout; int an_fileno; int an_name; } ;
struct autofs_mount {int am_last_fileno; } ;


 int AUTOFS_ASSERT_XLOCKED (struct autofs_mount*) ;
 scalar_t__ ENOENT ;
 int KASSERT (int,char*) ;
 int M_AUTOFS ;
 int M_WAITOK ;
 int M_ZERO ;
 int RB_INIT (int *) ;
 int RB_INSERT (int ,int *,struct autofs_node*) ;
 int SX_NOWITNESS ;
 int atomic_fetchadd_int (int *,int) ;
 scalar_t__ autofs_node_find (struct autofs_node*,char const*,int,int *) ;
 int autofs_node_tree ;
 int autofs_node_zone ;
 int callout_init (int *,int) ;
 int getnanotime (int *) ;
 int strdup (char const*,int ) ;
 int strndup (char const*,int,int ) ;
 int sx_init_flags (int *,char*,int ) ;
 struct autofs_node* uma_zalloc (int ,int) ;

int
autofs_node_new(struct autofs_node *parent, struct autofs_mount *amp,
    const char *name, int namelen, struct autofs_node **anpp)
{
 struct autofs_node *anp;

 if (parent != ((void*)0)) {
  AUTOFS_ASSERT_XLOCKED(parent->an_mount);

  KASSERT(autofs_node_find(parent, name, namelen, ((void*)0)) == ENOENT,
      ("node \"%s\" already exists", name));
 }

 anp = uma_zalloc(autofs_node_zone, M_WAITOK | M_ZERO);
 if (namelen >= 0)
  anp->an_name = strndup(name, namelen, M_AUTOFS);
 else
  anp->an_name = strdup(name, M_AUTOFS);
 anp->an_fileno = atomic_fetchadd_int(&amp->am_last_fileno, 1);
 callout_init(&anp->an_callout, 1);
 sx_init_flags(&anp->an_vnode_lock, "autofsvlk", SX_NOWITNESS);
 getnanotime(&anp->an_ctime);
 anp->an_parent = parent;
 anp->an_mount = amp;
 if (parent != ((void*)0))
  RB_INSERT(autofs_node_tree, &parent->an_children, anp);
 RB_INIT(&anp->an_children);

 *anpp = anp;
 return (0);
}
