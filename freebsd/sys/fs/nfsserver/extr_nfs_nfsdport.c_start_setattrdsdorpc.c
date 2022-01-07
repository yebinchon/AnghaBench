
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfsrvsetattrdsdorpc {int done; int dsna; int na; int nmp; int vp; int p; int cred; int fh; int err; } ;


 int nfsrv_setattrdsdorpc (int *,int ,int ,int ,int ,int *,int *) ;

__attribute__((used)) static void
start_setattrdsdorpc(void *arg, int pending)
{
 struct nfsrvsetattrdsdorpc *drpc;

 drpc = (struct nfsrvsetattrdsdorpc *)arg;
 drpc->err = nfsrv_setattrdsdorpc(&drpc->fh, drpc->cred, drpc->p,
     drpc->vp, drpc->nmp, &drpc->na, &drpc->dsna);
 drpc->done = 1;
}
