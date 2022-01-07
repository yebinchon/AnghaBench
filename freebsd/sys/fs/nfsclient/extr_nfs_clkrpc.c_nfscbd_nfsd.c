
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct thread {int dummy; } ;
struct nfsd_nfscbd_args {int principal; } ;
typedef int principal ;
struct TYPE_3__ {int sp_minthreads; int sp_maxthreads; } ;


 int GSS_C_INDEFINITE ;
 int NFSD_LOCK () ;
 int NFSD_UNLOCK () ;
 int NFSV4_CBVERS ;
 int NFS_CALLBCKPROG ;
 int copyinstr (int ,char*,int,int *) ;
 scalar_t__ nfs_numnfscbd ;
 TYPE_1__* nfscbd_pool ;
 int nfsrvd_cbinit (int) ;
 int rpc_gss_clear_svc_name_call (int ,int ) ;
 int rpc_gss_set_svc_name_call (char*,char*,int ,int ,int ) ;
 int svc_run (TYPE_1__*) ;

int
nfscbd_nfsd(struct thread *td, struct nfsd_nfscbd_args *args)
{
 char principal[128];
 int error;

 if (args != ((void*)0)) {
  error = copyinstr(args->principal, principal,
      sizeof(principal), ((void*)0));
  if (error)
   return (error);
 } else {
  principal[0] = '\0';
 }
 NFSD_LOCK();
 if (nfs_numnfscbd == 0) {
  nfs_numnfscbd++;

  NFSD_UNLOCK();

  if (principal[0] != '\0')
   rpc_gss_set_svc_name_call(principal, "kerberosv5",
       GSS_C_INDEFINITE, NFS_CALLBCKPROG, NFSV4_CBVERS);

  nfscbd_pool->sp_minthreads = 4;
  nfscbd_pool->sp_maxthreads = 4;

  svc_run(nfscbd_pool);

  rpc_gss_clear_svc_name_call(NFS_CALLBCKPROG, NFSV4_CBVERS);

  NFSD_LOCK();
  nfs_numnfscbd--;
  nfsrvd_cbinit(1);
 }
 NFSD_UNLOCK();

 return (0);
}
