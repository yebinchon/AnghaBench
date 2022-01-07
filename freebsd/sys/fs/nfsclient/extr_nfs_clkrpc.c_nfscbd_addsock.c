
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {scalar_t__ so_type; } ;
struct file {struct socket* f_data; int * f_ops; } ;
typedef int SVCXPRT ;


 int NFSV4_CBVERS ;
 int NFS_CALLBCKPROG ;
 scalar_t__ SOCK_DGRAM ;
 int SVC_RELEASE (int *) ;
 int badfileops ;
 int nfscb_program ;
 int nfscbd_pool ;
 int sb_max_adj ;
 int soreserve (struct socket*,int,int) ;
 int * svc_dg_create (int ,struct socket*,int ,int ) ;
 int svc_reg (int *,int ,int ,int ,int *) ;
 int * svc_vc_create (int ,struct socket*,int ,int ) ;

int
nfscbd_addsock(struct file *fp)
{
 int siz;
 struct socket *so;
 int error;
 SVCXPRT *xprt;

 so = fp->f_data;

 siz = sb_max_adj;
 error = soreserve(so, siz, siz);
 if (error)
  return (error);





 if (so->so_type == SOCK_DGRAM)
  xprt = svc_dg_create(nfscbd_pool, so, 0, 0);
 else
  xprt = svc_vc_create(nfscbd_pool, so, 0, 0);
 if (xprt) {
  fp->f_ops = &badfileops;
  fp->f_data = ((void*)0);
  svc_reg(xprt, NFS_CALLBCKPROG, NFSV4_CBVERS, nfscb_program,
      ((void*)0));
  SVC_RELEASE(xprt);
 }

 return (0);
}
