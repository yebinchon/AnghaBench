
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ u_int64_t ;
struct socket {scalar_t__ so_type; } ;
struct file {struct socket* f_data; int * f_ops; } ;
struct TYPE_7__ {scalar_t__ xp_sockref; } ;
typedef TYPE_1__ SVCXPRT ;


 int NFSEXITCODE (int) ;
 int NFS_PROG ;
 scalar_t__ NFS_VER2 ;
 scalar_t__ NFS_VER3 ;
 scalar_t__ NFS_VER4 ;
 scalar_t__ SOCK_DGRAM ;
 scalar_t__ SOCK_STREAM ;
 int SVC_RELEASE (TYPE_1__*) ;
 int badfileops ;
 scalar_t__ nfs_maxvers ;
 scalar_t__ nfs_minvers ;
 int nfsrvd_pool ;
 int nfssvc_loss ;
 int nfssvc_program ;
 int sb_max_adj ;
 int soreserve (struct socket*,int,int) ;
 TYPE_1__* svc_dg_create (int ,struct socket*,int ,int ) ;
 int svc_loss_reg (TYPE_1__*,int ) ;
 int svc_reg (TYPE_1__*,int ,scalar_t__,int ,int *) ;
 TYPE_1__* svc_vc_create (int ,struct socket*,int ,int ) ;

int
nfsrvd_addsock(struct file *fp)
{
 int siz;
 struct socket *so;
 int error = 0;
 SVCXPRT *xprt;
 static u_int64_t sockref = 0;

 so = fp->f_data;

 siz = sb_max_adj;
 error = soreserve(so, siz, siz);
 if (error)
  goto out;





 if (so->so_type == SOCK_DGRAM)
  xprt = svc_dg_create(nfsrvd_pool, so, 0, 0);
 else
  xprt = svc_vc_create(nfsrvd_pool, so, 0, 0);
 if (xprt) {
  fp->f_ops = &badfileops;
  fp->f_data = ((void*)0);
  xprt->xp_sockref = ++sockref;
  if (nfs_minvers == NFS_VER2)
   svc_reg(xprt, NFS_PROG, NFS_VER2, nfssvc_program,
       ((void*)0));
  if (nfs_minvers <= NFS_VER3 && nfs_maxvers >= NFS_VER3)
   svc_reg(xprt, NFS_PROG, NFS_VER3, nfssvc_program,
       ((void*)0));
  if (nfs_maxvers >= NFS_VER4)
   svc_reg(xprt, NFS_PROG, NFS_VER4, nfssvc_program,
       ((void*)0));
  if (so->so_type == SOCK_STREAM)
   svc_loss_reg(xprt, nfssvc_loss);
  SVC_RELEASE(xprt);
 }

out:
 NFSEXITCODE(error);
 return (error);
}
