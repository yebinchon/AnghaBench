
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int NFSLOCKIOD () ;
 int NFSUNLOCKIOD () ;
 scalar_t__ NFS_MAXASYNCDAEMON ;
 int TUNABLE_INT_FETCH (char*,scalar_t__*) ;
 scalar_t__ ncl_numasync ;
 scalar_t__ nfs_iodmin ;
 int nfs_nfsiodnew_sync () ;
 int nfscl_init () ;
 int panic (char*) ;

__attribute__((used)) static void
nfsiod_setup(void *dummy)
{
 int error;

 TUNABLE_INT_FETCH("vfs.nfs.iodmin", &nfs_iodmin);
 nfscl_init();
 NFSLOCKIOD();

 if (nfs_iodmin > NFS_MAXASYNCDAEMON)
  nfs_iodmin = NFS_MAXASYNCDAEMON;

 while (ncl_numasync < nfs_iodmin) {
  error = nfs_nfsiodnew_sync();
  if (error == -1)
   panic("nfsiod_setup: nfs_nfsiodnew failed");
 }
 NFSUNLOCKIOD();
}
