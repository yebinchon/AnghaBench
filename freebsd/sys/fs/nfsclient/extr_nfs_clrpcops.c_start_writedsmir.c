
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfsclwritedsdorpc {int done; int err; int p; int cred; int minorvers; int vers; int m; int fhp; int len; int off; int dsp; int stateidp; int must_commit; int iomode; int vp; } ;


 int NFSCL_DEBUG (int,char*,int ) ;
 int nfsrpc_writedsmir (int ,int *,int *,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ) ;

__attribute__((used)) static void
start_writedsmir(void *arg, int pending)
{
 struct nfsclwritedsdorpc *drpc;

 drpc = (struct nfsclwritedsdorpc *)arg;
 drpc->err = nfsrpc_writedsmir(drpc->vp, &drpc->iomode,
     &drpc->must_commit, drpc->stateidp, drpc->dsp, drpc->off, drpc->len,
     drpc->fhp, drpc->m, drpc->vers, drpc->minorvers, drpc->cred,
     drpc->p);
 drpc->done = 1;
 NFSCL_DEBUG(4, "start_writedsmir: err=%d\n", drpc->err);
}
