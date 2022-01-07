
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pfs_node {int pn_flags; int pn_destroy; int pn_vis; int pn_attr; int pn_fill; int pn_info; } ;
typedef int pfs_vis_t ;
typedef int pfs_fill_t ;
typedef int pfs_destroy_t ;
typedef int pfs_attr_t ;


 int pfs_add_node (struct pfs_node*,struct pfs_node*) ;
 struct pfs_node* pfs_alloc_node_flags (int ,char const*,int ,int) ;
 int pfstype_symlink ;

struct pfs_node *
pfs_create_link(struct pfs_node *parent, const char *name, pfs_fill_t fill,
  pfs_attr_t attr, pfs_vis_t vis, pfs_destroy_t destroy,
  int flags)
{
 struct pfs_node *pn;

 pn = pfs_alloc_node_flags(parent->pn_info, name, pfstype_symlink, flags);
 if (pn == ((void*)0))
  return (((void*)0));
 pn->pn_fill = fill;
 pn->pn_attr = attr;
 pn->pn_vis = vis;
 pn->pn_destroy = destroy;
 pn->pn_flags = flags;
 pfs_add_node(parent, pn);

 return (pn);
}
