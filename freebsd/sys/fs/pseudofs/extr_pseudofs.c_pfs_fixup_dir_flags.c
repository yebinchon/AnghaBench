
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pfs_node {int pn_info; } ;


 int ENOMEM ;
 int pfs_add_node (struct pfs_node*,struct pfs_node*) ;
 struct pfs_node* pfs_alloc_node_flags (int ,char*,int ,int) ;
 int pfs_destroy (struct pfs_node*) ;
 int pfstype_parent ;
 int pfstype_this ;

__attribute__((used)) static int
pfs_fixup_dir_flags(struct pfs_node *parent, int flags)
{
 struct pfs_node *dot, *dotdot;

 dot = pfs_alloc_node_flags(parent->pn_info, ".", pfstype_this, flags);
 if (dot == ((void*)0))
  return (ENOMEM);
 dotdot = pfs_alloc_node_flags(parent->pn_info, "..", pfstype_parent, flags);
 if (dotdot == ((void*)0)) {
  pfs_destroy(dot);
  return (ENOMEM);
 }
 pfs_add_node(parent, dot);
 pfs_add_node(parent, dotdot);
 return (0);
}
