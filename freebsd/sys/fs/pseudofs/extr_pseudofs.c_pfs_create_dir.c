
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pfs_node {int pn_flags; int pn_destroy; int pn_vis; int pn_attr; int pn_info; } ;
typedef int pfs_vis_t ;
typedef int pfs_destroy_t ;
typedef int pfs_attr_t ;


 int PFS_PROCDEP ;
 int pfs_add_node (struct pfs_node*,struct pfs_node*) ;
 struct pfs_node* pfs_alloc_node_flags (int ,char const*,int ,int) ;
 int pfs_destroy (struct pfs_node*) ;
 int pfs_fixup_dir_flags (struct pfs_node*,int) ;
 int pfstype_dir ;
 int pfstype_procdir ;

struct pfs_node *
pfs_create_dir(struct pfs_node *parent, const char *name,
        pfs_attr_t attr, pfs_vis_t vis, pfs_destroy_t destroy,
        int flags)
{
 struct pfs_node *pn;
 int rc;

 pn = pfs_alloc_node_flags(parent->pn_info, name,
    (flags & PFS_PROCDEP) ? pfstype_procdir : pfstype_dir, flags);
 if (pn == ((void*)0))
  return (((void*)0));
 pn->pn_attr = attr;
 pn->pn_vis = vis;
 pn->pn_destroy = destroy;
 pn->pn_flags = flags;
 pfs_add_node(parent, pn);
 rc = pfs_fixup_dir_flags(pn, flags);
 if (rc) {
  pfs_destroy(pn);
  return (((void*)0));
 }
 return (pn);
}
