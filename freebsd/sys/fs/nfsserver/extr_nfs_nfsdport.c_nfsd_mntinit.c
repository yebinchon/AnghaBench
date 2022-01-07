
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int mnt_flag; scalar_t__ mnt_activevnodelistsize; scalar_t__ mnt_nvnodelistsize; int * mnt_optnew; int * mnt_opt; int * mnt_export; int mnt_activevnodelist; int mnt_nvnodelist; } ;


 int MNT_EXPORTED ;
 int MNT_RDONLY ;
 int TAILQ_INIT (int *) ;
 TYPE_1__ nfsv4root_mnt ;
 int nfsv4root_newopt ;
 int nfsv4root_opt ;

void
nfsd_mntinit(void)
{
 static int inited = 0;

 if (inited)
  return;
 inited = 1;
 nfsv4root_mnt.mnt_flag = (MNT_RDONLY | MNT_EXPORTED);
 TAILQ_INIT(&nfsv4root_mnt.mnt_nvnodelist);
 TAILQ_INIT(&nfsv4root_mnt.mnt_activevnodelist);
 nfsv4root_mnt.mnt_export = ((void*)0);
 TAILQ_INIT(&nfsv4root_opt);
 TAILQ_INIT(&nfsv4root_newopt);
 nfsv4root_mnt.mnt_opt = &nfsv4root_opt;
 nfsv4root_mnt.mnt_optnew = &nfsv4root_newopt;
 nfsv4root_mnt.mnt_nvnodelistsize = 0;
 nfsv4root_mnt.mnt_activevnodelistsize = 0;
}
