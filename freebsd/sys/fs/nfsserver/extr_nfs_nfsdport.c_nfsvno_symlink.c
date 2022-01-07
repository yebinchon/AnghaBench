
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uid_t ;
struct ucred {int dummy; } ;
struct thread {int dummy; } ;
struct nfsvattr {int na_vattr; } ;
struct nfsexstuff {int dummy; } ;
struct nameidata {scalar_t__ ni_vp; scalar_t__ ni_startdir; scalar_t__ ni_dvp; int ni_cnd; } ;


 int EEXIST ;
 int NFSEXITCODE (int) ;
 int VOP_SYMLINK (scalar_t__,scalar_t__*,int *,int *,char*) ;
 int nfsvno_relpathbuf (struct nameidata*) ;
 int vput (scalar_t__) ;
 int vrele (scalar_t__) ;

int
nfsvno_symlink(struct nameidata *ndp, struct nfsvattr *nvap, char *pathcp,
    int pathlen, int not_v2, uid_t saved_uid, struct ucred *cred, struct thread *p,
    struct nfsexstuff *exp)
{
 int error = 0;

 if (ndp->ni_vp) {
  vrele(ndp->ni_startdir);
  nfsvno_relpathbuf(ndp);
  if (ndp->ni_dvp == ndp->ni_vp)
   vrele(ndp->ni_dvp);
  else
   vput(ndp->ni_dvp);
  vrele(ndp->ni_vp);
  error = EEXIST;
  goto out;
 }

 error = VOP_SYMLINK(ndp->ni_dvp, &ndp->ni_vp, &ndp->ni_cnd,
     &nvap->na_vattr, pathcp);
 vput(ndp->ni_dvp);
 vrele(ndp->ni_startdir);
 nfsvno_relpathbuf(ndp);






 if (!not_v2 && !error)
  vput(ndp->ni_vp);

out:
 NFSEXITCODE(error);
 return (error);
}
