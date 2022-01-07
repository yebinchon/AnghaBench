
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pfs_node {int pn_name; struct pfs_node* pn_next; struct pfs_node* pn_nodes; } ;


 int pfs_lock (struct pfs_node*) ;
 int pfs_unlock (struct pfs_node*) ;
 scalar_t__ strcmp (int ,char const*) ;

struct pfs_node *
pfs_find_node(struct pfs_node *parent, const char *name)
{
 struct pfs_node *pn;

 pfs_lock(parent);
 for (pn = parent->pn_nodes; pn != ((void*)0); pn = pn->pn_next)
  if (strcmp(pn->pn_name, name) == 0)
   break;
 pfs_unlock(parent);
 return (pn);
}
