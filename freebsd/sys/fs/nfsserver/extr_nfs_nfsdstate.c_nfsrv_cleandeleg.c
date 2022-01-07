
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vnode_t ;
struct nfsstate {struct nfsclient* ls_clp; } ;
struct nfslockfile {int lf_deleg; } ;
struct nfsclient {int dummy; } ;
typedef int NFSPROC_T ;


 struct nfsstate* LIST_END (int *) ;
 struct nfsstate* LIST_FIRST (int *) ;
 struct nfsstate* LIST_NEXT (struct nfsstate*,int ) ;
 int NFSEXITCODE (int) ;
 int ls_file ;
 int nfsrv_delegconflict (struct nfsstate*,int*,int *,int ) ;

__attribute__((used)) static int
nfsrv_cleandeleg(vnode_t vp, struct nfslockfile *lfp,
    struct nfsclient *clp, int *haslockp, NFSPROC_T *p)
{
 struct nfsstate *stp, *nstp;
 int ret = 0;

 stp = LIST_FIRST(&lfp->lf_deleg);
 while (stp != LIST_END(&lfp->lf_deleg)) {
  nstp = LIST_NEXT(stp, ls_file);
  if (stp->ls_clp != clp) {
   ret = nfsrv_delegconflict(stp, haslockp, p, vp);
   if (ret) {




    goto out;
   }
  }
  stp = nstp;
 }
out:
 NFSEXITCODE(ret);
 return (ret);
}
