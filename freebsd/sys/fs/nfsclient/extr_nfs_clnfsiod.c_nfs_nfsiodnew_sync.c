
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int NFSASSERTIOD () ;
 int NFSIOD_AVAILABLE ;
 int NFSLOCKIOD () ;
 int NFSUNLOCKIOD () ;
 int RFHIGHPID ;
 int kproc_create (int ,int*,int *,int ,int ,char*,int) ;
 int ncl_iodmax ;
 int * ncl_iodwant ;
 int ncl_numasync ;
 int* nfs_asyncdaemon ;
 int nfssvc_iod ;

__attribute__((used)) static int
nfs_nfsiodnew_sync(void)
{
 int error, i;

 NFSASSERTIOD();
 for (i = 0; i < ncl_iodmax; i++) {
  if (nfs_asyncdaemon[i] == 0) {
   nfs_asyncdaemon[i] = 1;
   break;
  }
 }
 if (i == ncl_iodmax)
  return (0);
 NFSUNLOCKIOD();
 error = kproc_create(nfssvc_iod, nfs_asyncdaemon + i, ((void*)0),
     RFHIGHPID, 0, "newnfs %d", i);
 NFSLOCKIOD();
 if (error == 0) {
  ncl_numasync++;
  ncl_iodwant[i] = NFSIOD_AVAILABLE;
 } else
  nfs_asyncdaemon[i] = 0;
 return (error);
}
