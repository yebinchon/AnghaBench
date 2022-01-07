
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct sockaddr_in {int dummy; } ;
struct ifaliasreq {int dummy; } ;
struct TYPE_6__ {int flags; } ;
struct TYPE_5__ {int * my_hostnam; int root_time; int * root_hostnam; int root_saddr; int * root_fh; int root_args; int mygateway; int myif; } ;
struct TYPE_4__ {int root_fhsize; int * my_hostnam; int root_time; int * root_hostnam; int root_saddr; int * root_fh; TYPE_3__ root_args; int mygateway; int myif; } ;


 int MAXHOSTNAMELEN ;
 int MNAMELEN ;
 int NFSMNT_NFSV3 ;
 int NFSX_MYFH ;
 int NFSX_V2FH ;
 int bcopy (int *,int *,int) ;
 int nfs_convert_oargs (TYPE_3__*,int *) ;
 TYPE_2__ nfs_diskless ;
 int nfs_diskless_valid ;
 TYPE_1__ nfsv3_diskless ;

__attribute__((used)) static void
nfs_convert_diskless(void)
{

 bcopy(&nfs_diskless.myif, &nfsv3_diskless.myif,
  sizeof(struct ifaliasreq));
 bcopy(&nfs_diskless.mygateway, &nfsv3_diskless.mygateway,
  sizeof(struct sockaddr_in));
 nfs_convert_oargs(&nfsv3_diskless.root_args,&nfs_diskless.root_args);
 if (nfsv3_diskless.root_args.flags & NFSMNT_NFSV3) {
  nfsv3_diskless.root_fhsize = NFSX_MYFH;
  bcopy(nfs_diskless.root_fh, nfsv3_diskless.root_fh, NFSX_MYFH);
 } else {
  nfsv3_diskless.root_fhsize = NFSX_V2FH;
  bcopy(nfs_diskless.root_fh, nfsv3_diskless.root_fh, NFSX_V2FH);
 }
 bcopy(&nfs_diskless.root_saddr,&nfsv3_diskless.root_saddr,
  sizeof(struct sockaddr_in));
 bcopy(nfs_diskless.root_hostnam, nfsv3_diskless.root_hostnam, MNAMELEN);
 nfsv3_diskless.root_time = nfs_diskless.root_time;
 bcopy(nfs_diskless.my_hostnam, nfsv3_diskless.my_hostnam,
  MAXHOSTNAMELEN);
 nfs_diskless_valid = 3;
}
