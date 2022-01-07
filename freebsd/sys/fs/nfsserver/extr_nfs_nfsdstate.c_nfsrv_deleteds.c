
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfsdevice {scalar_t__ nfsdev_mdsisset; int * nfsdev_nmp; } ;


 int NFSD_DEBUG (int,char*) ;
 int nfsrv_faildscnt ;

__attribute__((used)) static void
nfsrv_deleteds(struct nfsdevice *fndds)
{

 NFSD_DEBUG(4, "deleteds: deleting a mirror\n");
 fndds->nfsdev_nmp = ((void*)0);
 if (fndds->nfsdev_mdsisset == 0)
  nfsrv_faildscnt--;
}
