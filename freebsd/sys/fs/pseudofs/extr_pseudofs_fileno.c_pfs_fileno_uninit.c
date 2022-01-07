
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pfs_info {int pi_mutex; int * pi_unrhdr; } ;


 int delete_unrhdr (int *) ;
 int mtx_destroy (int *) ;

void
pfs_fileno_uninit(struct pfs_info *pi)
{

 delete_unrhdr(pi->pi_unrhdr);
 pi->pi_unrhdr = ((void*)0);
 mtx_destroy(&pi->pi_mutex);
}
