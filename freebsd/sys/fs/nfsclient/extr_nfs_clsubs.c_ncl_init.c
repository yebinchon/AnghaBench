
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vfsconf {int dummy; } ;


 int NFSIOD_NOT_AVAILABLE ;
 int NFS_MAXASYNCDAEMON ;
 int TASK_INIT (int *,int ,int ,int *) ;
 int ** ncl_iodmount ;
 int * ncl_iodwant ;
 int ncl_nfsiodnew_task ;
 int ncl_nfsiodnew_tq ;
 int ncl_nhinit () ;

int
ncl_init(struct vfsconf *vfsp)
{
 int i;


 for (i = 0; i < NFS_MAXASYNCDAEMON; i++) {
  ncl_iodwant[i] = NFSIOD_NOT_AVAILABLE;
  ncl_iodmount[i] = ((void*)0);
 }
 TASK_INIT(&ncl_nfsiodnew_task, 0, ncl_nfsiodnew_tq, ((void*)0));
 ncl_nhinit();

 return (0);
}
