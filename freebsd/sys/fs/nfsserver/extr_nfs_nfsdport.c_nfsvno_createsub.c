
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u_quad_t ;
struct vnode {int dummy; } ;
struct thread {int dummy; } ;
struct TYPE_2__ {void* tv_nsec; void* tv_sec; } ;
struct nfsvattr {scalar_t__ na_type; int na_rdev; scalar_t__ na_size; int na_vattr; TYPE_1__ na_atime; } ;
struct nfsrv_descript {int nd_repstat; int nd_cred; } ;
struct nfsexstuff {int dummy; } ;
struct nameidata {struct vnode* ni_dvp; struct vnode* ni_vp; struct vnode* ni_startdir; int ni_cnd; } ;
typedef void* int32_t ;
typedef int NFSDEV_T ;


 int ENXIO ;
 int NFSACCCHK_NOOVERRIDE ;
 int NFSACCCHK_VPISLOCKED ;
 int NFSERR_NOTSUPP ;
 int NFSEXITCODE (int) ;
 int NFSVNO_ATTRINIT (struct nfsvattr*) ;
 int PRIV_VFS_MKNOD_DEV ;
 scalar_t__ VBLK ;
 scalar_t__ VCHR ;
 scalar_t__ VFIFO ;
 scalar_t__ VNOVAL ;
 int VOP_CREATE (struct vnode*,struct vnode**,int *,int *) ;
 int VOP_MKNOD (struct vnode*,struct vnode**,int *,int *) ;
 int VOP_SETATTR (struct vnode*,int *,int ) ;
 scalar_t__ VREG ;
 scalar_t__ VSOCK ;
 int VWRITE ;
 struct thread* curthread ;
 int nfsrv_pnfscreate (struct vnode*,int *,int ,struct thread*) ;
 int nfsvno_accchk (struct vnode*,int ,int ,struct nfsexstuff*,struct thread*,int ,int ,int *) ;
 int nfsvno_relpathbuf (struct nameidata*) ;
 int priv_check_cred (int ,int ) ;
 int vput (struct vnode*) ;
 int vrele (struct vnode*) ;

int
nfsvno_createsub(struct nfsrv_descript *nd, struct nameidata *ndp,
    struct vnode **vpp, struct nfsvattr *nvap, int *exclusive_flagp,
    int32_t *cverf, NFSDEV_T rdev, struct nfsexstuff *exp)
{
 u_quad_t tempsize;
 int error;
 struct thread *p = curthread;

 error = nd->nd_repstat;
 if (!error && ndp->ni_vp == ((void*)0)) {
  if (nvap->na_type == VREG || nvap->na_type == VSOCK) {
   vrele(ndp->ni_startdir);
   error = VOP_CREATE(ndp->ni_dvp,
       &ndp->ni_vp, &ndp->ni_cnd, &nvap->na_vattr);

   if (error == 0 && nvap->na_type == VREG) {





    nfsrv_pnfscreate(ndp->ni_vp, &nvap->na_vattr,
        nd->nd_cred, p);
   }
   vput(ndp->ni_dvp);
   nfsvno_relpathbuf(ndp);
   if (!error) {
    if (*exclusive_flagp) {
     *exclusive_flagp = 0;
     NFSVNO_ATTRINIT(nvap);
     nvap->na_atime.tv_sec = cverf[0];
     nvap->na_atime.tv_nsec = cverf[1];
     error = VOP_SETATTR(ndp->ni_vp,
         &nvap->na_vattr, nd->nd_cred);
     if (error != 0) {
      vput(ndp->ni_vp);
      ndp->ni_vp = ((void*)0);
      error = NFSERR_NOTSUPP;
     }
    }
   }




  } else if (nvap->na_type == VCHR || nvap->na_type == VBLK ||
   nvap->na_type == VFIFO) {
   if (nvap->na_type == VCHR && rdev == 0xffffffff)
    nvap->na_type = VFIFO;
                        if (nvap->na_type != VFIFO &&
       (error = priv_check_cred(nd->nd_cred, PRIV_VFS_MKNOD_DEV))) {
    vrele(ndp->ni_startdir);
    nfsvno_relpathbuf(ndp);
    vput(ndp->ni_dvp);
    goto out;
   }
   nvap->na_rdev = rdev;
   error = VOP_MKNOD(ndp->ni_dvp, &ndp->ni_vp,
       &ndp->ni_cnd, &nvap->na_vattr);
   vput(ndp->ni_dvp);
   nfsvno_relpathbuf(ndp);
   vrele(ndp->ni_startdir);
   if (error)
    goto out;
  } else {
   vrele(ndp->ni_startdir);
   nfsvno_relpathbuf(ndp);
   vput(ndp->ni_dvp);
   error = ENXIO;
   goto out;
  }
  *vpp = ndp->ni_vp;
 } else {






  vrele(ndp->ni_startdir);
  nfsvno_relpathbuf(ndp);
  *vpp = ndp->ni_vp;
  if (ndp->ni_dvp == *vpp)
   vrele(ndp->ni_dvp);
  else
   vput(ndp->ni_dvp);
  if (!error && nvap->na_size != VNOVAL) {
   error = nfsvno_accchk(*vpp, VWRITE,
       nd->nd_cred, exp, p, NFSACCCHK_NOOVERRIDE,
       NFSACCCHK_VPISLOCKED, ((void*)0));
   if (!error) {
    tempsize = nvap->na_size;
    NFSVNO_ATTRINIT(nvap);
    nvap->na_size = tempsize;
    error = VOP_SETATTR(*vpp,
        &nvap->na_vattr, nd->nd_cred);
   }
  }
  if (error)
   vput(*vpp);
 }

out:
 NFSEXITCODE(error);
 return (error);
}
