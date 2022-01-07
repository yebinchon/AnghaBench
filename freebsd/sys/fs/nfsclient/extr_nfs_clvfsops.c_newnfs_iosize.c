
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct nfsmount {int nm_flag; scalar_t__ nm_sotype; int nm_rsize; int nm_readdirsize; int nm_wsize; TYPE_2__* nm_mountp; } ;
struct TYPE_3__ {int f_iosize; } ;
struct TYPE_4__ {TYPE_1__ mnt_stat; } ;


 int NFSMNT_NFSV3 ;
 int NFSMNT_NFSV4 ;
 void* NFS_DIRBLKSIZ ;
 void* NFS_MAXBSIZE ;
 int NFS_MAXDGRAMDATA ;
 int NFS_V2MAXDATA ;
 void* PAGE_SIZE ;
 scalar_t__ SOCK_DGRAM ;
 int imax (int,void*) ;

int
newnfs_iosize(struct nfsmount *nmp)
{
 int iosize, maxio;


 if (nmp->nm_flag & NFSMNT_NFSV4) {
  maxio = NFS_MAXBSIZE;
 } else if (nmp->nm_flag & NFSMNT_NFSV3) {
  if (nmp->nm_sotype == SOCK_DGRAM)
   maxio = NFS_MAXDGRAMDATA;
  else
   maxio = NFS_MAXBSIZE;
 } else {
  maxio = NFS_V2MAXDATA;
 }
 if (nmp->nm_rsize > maxio || nmp->nm_rsize == 0)
  nmp->nm_rsize = maxio;
 if (nmp->nm_rsize > NFS_MAXBSIZE)
  nmp->nm_rsize = NFS_MAXBSIZE;
 if (nmp->nm_readdirsize > maxio || nmp->nm_readdirsize == 0)
  nmp->nm_readdirsize = maxio;
 if (nmp->nm_readdirsize > nmp->nm_rsize)
  nmp->nm_readdirsize = nmp->nm_rsize;
 if (nmp->nm_wsize > maxio || nmp->nm_wsize == 0)
  nmp->nm_wsize = maxio;
 if (nmp->nm_wsize > NFS_MAXBSIZE)
  nmp->nm_wsize = NFS_MAXBSIZE;
 iosize = imax(nmp->nm_rsize, nmp->nm_wsize);
 iosize = imax(iosize, PAGE_SIZE);
 iosize = imax(iosize, NFS_DIRBLKSIZ);
 nmp->nm_mountp->mnt_stat.f_iosize = iosize;
 return (iosize);
}
