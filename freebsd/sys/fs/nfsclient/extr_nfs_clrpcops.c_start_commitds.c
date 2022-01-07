
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfsclwritedsdorpc {int done; int err; int p; int cred; int minorvers; int vers; int fhp; int dsp; int len; int off; int vp; } ;


 int NFSCL_DEBUG (int,char*,int ) ;
 int nfsrpc_commitds (int ,int ,int ,int ,int ,int ,int ,int ,int ) ;

__attribute__((used)) static void
start_commitds(void *arg, int pending)
{
 struct nfsclwritedsdorpc *drpc;

 drpc = (struct nfsclwritedsdorpc *)arg;
 drpc->err = nfsrpc_commitds(drpc->vp, drpc->off, drpc->len,
     drpc->dsp, drpc->fhp, drpc->vers, drpc->minorvers, drpc->cred,
     drpc->p);
 drpc->done = 1;
 NFSCL_DEBUG(4, "start_commitds: err=%d\n", drpc->err);
}
