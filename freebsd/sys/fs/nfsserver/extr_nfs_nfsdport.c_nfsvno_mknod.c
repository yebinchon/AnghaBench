
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucred {int dummy; } ;
struct thread {int dummy; } ;
struct nfsvattr {int na_type; int na_vattr; } ;
struct nameidata {scalar_t__ ni_startdir; int ni_dvp; int ni_cnd; scalar_t__ ni_vp; } ;
typedef enum vtype { ____Placeholder_vtype } vtype ;


 int EEXIST ;
 int NFSERR_BADTYPE ;
 int NFSEXITCODE (int) ;
 int PRIV_VFS_MKNOD_DEV ;
 int VBLK ;
 int VCHR ;
 int VFIFO ;
 int VOP_CREATE (int ,scalar_t__*,int *,int *) ;
 int VOP_MKNOD (int ,scalar_t__*,int *,int *) ;
 int VSOCK ;
 int nfsvno_relpathbuf (struct nameidata*) ;
 int priv_check_cred (struct ucred*,int ) ;
 int vput (int ) ;
 int vrele (scalar_t__) ;

int
nfsvno_mknod(struct nameidata *ndp, struct nfsvattr *nvap, struct ucred *cred,
    struct thread *p)
{
 int error = 0;
 enum vtype vtyp;

 vtyp = nvap->na_type;



 if (ndp->ni_vp) {
  vrele(ndp->ni_startdir);
  nfsvno_relpathbuf(ndp);
  vput(ndp->ni_dvp);
  vrele(ndp->ni_vp);
  error = EEXIST;
  goto out;
 }
 if (vtyp != VCHR && vtyp != VBLK && vtyp != VSOCK && vtyp != VFIFO) {
  vrele(ndp->ni_startdir);
  nfsvno_relpathbuf(ndp);
  vput(ndp->ni_dvp);
  error = NFSERR_BADTYPE;
  goto out;
 }
 if (vtyp == VSOCK) {
  vrele(ndp->ni_startdir);
  error = VOP_CREATE(ndp->ni_dvp, &ndp->ni_vp,
      &ndp->ni_cnd, &nvap->na_vattr);
  vput(ndp->ni_dvp);
  nfsvno_relpathbuf(ndp);
 } else {
  if (nvap->na_type != VFIFO &&
      (error = priv_check_cred(cred, PRIV_VFS_MKNOD_DEV))) {
   vrele(ndp->ni_startdir);
   nfsvno_relpathbuf(ndp);
   vput(ndp->ni_dvp);
   goto out;
  }
  error = VOP_MKNOD(ndp->ni_dvp, &ndp->ni_vp,
      &ndp->ni_cnd, &nvap->na_vattr);
  vput(ndp->ni_dvp);
  nfsvno_relpathbuf(ndp);
  vrele(ndp->ni_startdir);




 }

out:
 NFSEXITCODE(error);
 return (error);
}
