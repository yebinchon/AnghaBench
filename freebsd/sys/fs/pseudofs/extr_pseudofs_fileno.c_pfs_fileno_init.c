
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pfs_info {int pi_mutex; int pi_unrhdr; } ;


 int INT_MAX ;
 int MTX_DEF ;
 int NO_PID ;
 int mtx_init (int *,char*,int *,int ) ;
 int new_unrhdr (int,int,int *) ;

void
pfs_fileno_init(struct pfs_info *pi)
{

 mtx_init(&pi->pi_mutex, "pfs_fileno", ((void*)0), MTX_DEF);
 pi->pi_unrhdr = new_unrhdr(3, INT_MAX / NO_PID, &pi->pi_mutex);
}
