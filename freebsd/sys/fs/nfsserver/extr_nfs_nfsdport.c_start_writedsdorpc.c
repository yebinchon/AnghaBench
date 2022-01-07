
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfsrvwritedsdorpc {int done; int err; int p; int cred; int m; int len; int off; int fh; int nmp; } ;


 int NFSD_DEBUG (int,char*,int ) ;
 int nfsrv_writedsdorpc (int ,int *,int ,int ,int *,int ,int ,int ) ;

__attribute__((used)) static void
start_writedsdorpc(void *arg, int pending)
{
 struct nfsrvwritedsdorpc *drpc;

 drpc = (struct nfsrvwritedsdorpc *)arg;
 drpc->err = nfsrv_writedsdorpc(drpc->nmp, &drpc->fh, drpc->off,
     drpc->len, ((void*)0), drpc->m, drpc->cred, drpc->p);
 drpc->done = 1;
 NFSD_DEBUG(4, "start_writedsdorpc: err=%d\n", drpc->err);
}
