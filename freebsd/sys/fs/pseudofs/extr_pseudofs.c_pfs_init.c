
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vfsconf {int dummy; } ;
struct pfs_node {int dummy; } ;
struct pfs_info {int (* pi_init ) (struct pfs_info*,struct vfsconf*) ;char* pi_name; struct pfs_node* pi_root; } ;


 scalar_t__ bootverbose ;
 struct pfs_node* pfs_alloc_node (struct pfs_info*,char*,int ) ;
 int pfs_destroy (struct pfs_node*) ;
 int pfs_fileno_alloc (struct pfs_node*) ;
 int pfs_fileno_init (struct pfs_info*) ;
 int pfs_fixup_dir (struct pfs_node*) ;
 int pfstype_root ;
 int printf (char*,char*) ;
 int stub1 (struct pfs_info*,struct vfsconf*) ;

int
pfs_init(struct pfs_info *pi, struct vfsconf *vfc)
{
 struct pfs_node *root;
 int error;

 pfs_fileno_init(pi);


 root = pfs_alloc_node(pi, "/", pfstype_root);
 pi->pi_root = root;
 pfs_fileno_alloc(root);
 pfs_fixup_dir(root);


 error = (pi->pi_init)(pi, vfc);
 if (error) {
  pfs_destroy(root);
  pi->pi_root = ((void*)0);
  return (error);
 }

 if (bootverbose)
  printf("%s registered\n", pi->pi_name);
 return (0);
}
