
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfslockfile {int lf_locallock_lck; } ;


 int nfsv4_unlock (int *,int ) ;

__attribute__((used)) static void
nfsrv_unlocklf(struct nfslockfile *lfp)
{

 nfsv4_unlock(&lfp->lf_locallock_lck, 0);
}
