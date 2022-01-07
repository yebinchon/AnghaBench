
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfslockfile {int lf_usecount; int lf_locallock_lck; } ;


 int NFSSTATEMUTEXPTR ;
 int nfsv4_lock (int *,int,int *,int ,int *) ;

__attribute__((used)) static void
nfsrv_locklf(struct nfslockfile *lfp)
{
 int gotlock;


 lfp->lf_usecount++;
 do {
  gotlock = nfsv4_lock(&lfp->lf_locallock_lck, 1, ((void*)0),
      NFSSTATEMUTEXPTR, ((void*)0));
 } while (gotlock == 0);
 lfp->lf_usecount--;
}
