
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfsmount {int dummy; } ;
struct nfsdevice {char* nfsdev_host; int nfsdev_deviceid; } ;
typedef int NFSPROC_T ;


 int NFSDDSLOCK () ;
 int NFSDDSUNLOCK () ;
 int NFSD_DEBUG (int,char*) ;
 int PNFSDOP_FORCEDELDS ;
 int nfsrv_deleteds (struct nfsdevice*) ;
 struct nfsdevice* nfsrv_findmirroredds (struct nfsmount*) ;
 int nfsrv_flexmirrordel (int ,int *) ;
 struct nfsdevice* nfsv4_findmirror (struct nfsmount*) ;
 int printf (char*,char*) ;

struct nfsdevice *
nfsrv_deldsnmp(int op, struct nfsmount *nmp, NFSPROC_T *p)
{
 struct nfsdevice *fndds;

 NFSD_DEBUG(4, "deldsdvp\n");
 NFSDDSLOCK();
 if (op == PNFSDOP_FORCEDELDS)
  fndds = nfsv4_findmirror(nmp);
 else
  fndds = nfsrv_findmirroredds(nmp);
 if (fndds != ((void*)0))
  nfsrv_deleteds(fndds);
 NFSDDSUNLOCK();
 if (fndds != ((void*)0)) {
  if (op != PNFSDOP_FORCEDELDS)
   nfsrv_flexmirrordel(fndds->nfsdev_deviceid, p);
  printf("pNFS server: mirror %s failed\n", fndds->nfsdev_host);
 }
 return (fndds);
}
