
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct thread {struct proc* td_proc; } ;
struct proc {int p_flag2; } ;
struct nfsd_nfsd_args {int maxthreads; int minthreads; int principal; } ;
typedef int principal ;
typedef int bool_t ;
struct TYPE_5__ {int modifyfs; } ;
struct TYPE_4__ {int sp_maxthreads; int sp_minthreads; } ;


 int GSS_C_INDEFINITE ;
 int MAXHOSTNAMELEN ;
 int NFSD_LOCK () ;
 int NFSD_UNLOCK () ;
 int NFSEXITCODE (int) ;
 size_t NFSPROC_GETATTR ;
 size_t NFSV4OP_GETATTR ;
 int NFS_PROG ;
 int NFS_VER2 ;
 int NFS_VER3 ;
 int NFS_VER4 ;
 int P2_AST_SU ;
 int PROC_LOCK (struct proc*) ;
 int PROC_UNLOCK (struct proc*) ;
 int copyinstr (int ,char*,int,int *) ;
 scalar_t__ newnfs_numnfsd ;
 int nfsdev_time ;
 int nfsrv_createdevids (struct nfsd_nfsd_args*,struct thread*) ;
 scalar_t__ nfsrv_devidcnt ;
 int* nfsrv_writerpc ;
 int nfsrvd_init (int) ;
 TYPE_1__* nfsrvd_pool ;
 TYPE_2__* nfsv4_opflag ;
 int printf (char*) ;
 int rpc_gss_clear_svc_name_call (int ,int ) ;
 int rpc_gss_set_svc_name_call (char*,char*,int ,int ,int ) ;
 int svc_run (TYPE_1__*) ;
 int time_second ;

int
nfsrvd_nfsd(struct thread *td, struct nfsd_nfsd_args *args)
{
 char principal[MAXHOSTNAMELEN + 5];
 struct proc *p;
 int error = 0;
 bool_t ret2, ret3, ret4;

 error = copyinstr(args->principal, principal, sizeof (principal),
     ((void*)0));
 if (error)
  goto out;
 NFSD_LOCK();
 if (newnfs_numnfsd == 0) {
  nfsdev_time = time_second;
  p = td->td_proc;
  PROC_LOCK(p);
  p->p_flag2 |= P2_AST_SU;
  PROC_UNLOCK(p);
  newnfs_numnfsd++;

  NFSD_UNLOCK();
  error = nfsrv_createdevids(args, td);
  if (error == 0) {

   if (principal[0] != '\0') {
    ret2 = rpc_gss_set_svc_name_call(principal,
        "kerberosv5", GSS_C_INDEFINITE, NFS_PROG,
        NFS_VER2);
    ret3 = rpc_gss_set_svc_name_call(principal,
        "kerberosv5", GSS_C_INDEFINITE, NFS_PROG,
        NFS_VER3);
    ret4 = rpc_gss_set_svc_name_call(principal,
        "kerberosv5", GSS_C_INDEFINITE, NFS_PROG,
        NFS_VER4);

    if (!ret2 || !ret3 || !ret4)
     printf(
         "nfsd: can't register svc name\n");
   }

   nfsrvd_pool->sp_minthreads = args->minthreads;
   nfsrvd_pool->sp_maxthreads = args->maxthreads;





   if (nfsrv_devidcnt > 0) {
    nfsrv_writerpc[NFSPROC_GETATTR] = 1;
    nfsv4_opflag[NFSV4OP_GETATTR].modifyfs = 1;
   }

   svc_run(nfsrvd_pool);


   nfsrv_writerpc[NFSPROC_GETATTR] = 0;
   nfsv4_opflag[NFSV4OP_GETATTR].modifyfs = 0;

   if (principal[0] != '\0') {
    rpc_gss_clear_svc_name_call(NFS_PROG, NFS_VER2);
    rpc_gss_clear_svc_name_call(NFS_PROG, NFS_VER3);
    rpc_gss_clear_svc_name_call(NFS_PROG, NFS_VER4);
   }
  }
  NFSD_LOCK();
  newnfs_numnfsd--;
  nfsrvd_init(1);
  PROC_LOCK(p);
  p->p_flag2 &= ~P2_AST_SU;
  PROC_UNLOCK(p);
 }
 NFSD_UNLOCK();

out:
 NFSEXITCODE(error);
 return (error);
}
