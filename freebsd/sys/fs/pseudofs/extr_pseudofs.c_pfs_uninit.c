
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vfsconf {int dummy; } ;
struct pfs_info {char* pi_name; int (* pi_uninit ) (struct pfs_info*,struct vfsconf*) ;int * pi_root; } ;


 scalar_t__ bootverbose ;
 int pfs_destroy (int *) ;
 int pfs_fileno_uninit (struct pfs_info*) ;
 int printf (char*,char*) ;
 int stub1 (struct pfs_info*,struct vfsconf*) ;

int
pfs_uninit(struct pfs_info *pi, struct vfsconf *vfc)
{
 int error;

 pfs_destroy(pi->pi_root);
 pi->pi_root = ((void*)0);
 pfs_fileno_uninit(pi);
 if (bootverbose)
  printf("%s unregistered\n", pi->pi_name);
 error = (pi->pi_uninit)(pi, vfc);
 return (error);
}
