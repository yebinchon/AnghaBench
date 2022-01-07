
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfsrvdscreate {int done; int err; int p; int tcred; int pf; int fh; int va; int createva; int dvp; } ;


 int NFSD_DEBUG (int,char*,int ) ;
 int nfsrv_dscreate (int ,int *,int *,int *,int ,int *,int *,int ,int ,int *) ;

__attribute__((used)) static void
start_dscreate(void *arg, int pending)
{
 struct nfsrvdscreate *dsc;

 dsc = (struct nfsrvdscreate *)arg;
 dsc->err = nfsrv_dscreate(dsc->dvp, &dsc->createva, &dsc->va, &dsc->fh,
     dsc->pf, ((void*)0), ((void*)0), dsc->tcred, dsc->p, ((void*)0));
 dsc->done = 1;
 NFSD_DEBUG(4, "start_dscreate: err=%d\n", dsc->err);
}
