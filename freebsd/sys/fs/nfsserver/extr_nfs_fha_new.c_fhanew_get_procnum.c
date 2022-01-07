
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rpcproc_t ;


 int NFSV2PROC_STATFS ;
 int* newnfs_nfsv3_procid ;

rpcproc_t
fhanew_get_procnum(rpcproc_t procnum)
{
 if (procnum > NFSV2PROC_STATFS)
  return (-1);

 return (newnfs_nfsv3_procid[procnum]);
}
