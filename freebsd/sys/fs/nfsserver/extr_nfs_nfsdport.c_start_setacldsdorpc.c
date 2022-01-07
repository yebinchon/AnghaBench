
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfsrvsetacldsdorpc {int done; int aclp; int nmp; int vp; int p; int cred; int fh; int err; } ;


 int nfsrv_setacldsdorpc (int *,int ,int ,int ,int ,int ) ;

__attribute__((used)) static void
start_setacldsdorpc(void *arg, int pending)
{
 struct nfsrvsetacldsdorpc *drpc;

 drpc = (struct nfsrvsetacldsdorpc *)arg;
 drpc->err = nfsrv_setacldsdorpc(&drpc->fh, drpc->cred, drpc->p,
     drpc->vp, drpc->nmp, drpc->aclp);
 drpc->done = 1;
}
