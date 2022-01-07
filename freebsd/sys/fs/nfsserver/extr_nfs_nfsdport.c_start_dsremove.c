
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfsrvdsremove {int done; int err; int p; int tcred; int fname; int dvp; } ;


 int NFSD_DEBUG (int,char*,int ) ;
 int nfsrv_dsremove (int ,int ,int ,int ) ;

__attribute__((used)) static void
start_dsremove(void *arg, int pending)
{
 struct nfsrvdsremove *dsrm;

 dsrm = (struct nfsrvdsremove *)arg;
 dsrm->err = nfsrv_dsremove(dsrm->dvp, dsrm->fname, dsrm->tcred,
     dsrm->p);
 dsrm->done = 1;
 NFSD_DEBUG(4, "start_dsremove: err=%d\n", dsrm->err);
}
