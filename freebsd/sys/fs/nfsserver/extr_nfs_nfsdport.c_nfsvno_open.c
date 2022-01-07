
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_quad_t ;
struct vnode {scalar_t__ v_type; } ;
struct ucred {int dummy; } ;
struct thread {int dummy; } ;
struct TYPE_3__ {void* tv_nsec; void* tv_sec; } ;
struct nfsvattr {int na_vattr; int na_size; TYPE_1__ na_atime; } ;
struct nfsstate {int dummy; } ;
struct nfsrv_descript {void* nd_repstat; } ;
struct nfsexstuff {int dummy; } ;
struct TYPE_4__ {int cn_flags; } ;
struct nameidata {struct vnode* ni_vp; struct vnode* ni_dvp; struct vnode* ni_startdir; TYPE_2__ ni_cnd; } ;
typedef int nfsv4stateid_t ;
typedef int nfsquad_t ;
typedef int nfsattrbit_t ;
typedef void* int32_t ;
typedef int NFSACL_T ;


 int HASBUF ;
 int NFSACCCHK_NOOVERRIDE ;
 int NFSACCCHK_VPISLOCKED ;
 int NFSATTRBIT_TIMEACCESS ;
 void* NFSERR_NOTSUPP ;
 int NFSEXITCODE2 (int ,struct nfsrv_descript*) ;
 int NFSSETBIT_ATTRBIT (int *,int ) ;
 int NFSV4OPEN_CREATE ;
 int NFSVNO_ATTRINIT (struct nfsvattr*) ;
 int NFSVNO_EXINIT (struct nfsexstuff*) ;
 scalar_t__ NFSVNO_ISSETSIZE (struct nfsvattr*) ;
 int NFSVNO_SETEXRDONLY (struct nfsexstuff*) ;
 int RDONLY ;
 void* VOP_CREATE (struct vnode*,struct vnode**,TYPE_2__*,int *) ;
 void* VOP_SETATTR (struct vnode*,int *,struct ucred*) ;
 scalar_t__ VREG ;
 int VWRITE ;
 struct thread* curthread ;
 int nfsrv_fixattr (struct nfsrv_descript*,struct vnode*,struct nfsvattr*,int *,struct thread*,int *,struct nfsexstuff*) ;
 void* nfsrv_opencheck (int ,int *,struct nfsstate*,struct vnode*,struct nfsrv_descript*,struct thread*,void*) ;
 int nfsrv_pnfscreate (struct vnode*,int *,struct ucred*,struct thread*) ;
 void* nfsvno_accchk (struct vnode*,int ,struct ucred*,struct nfsexstuff*,struct thread*,int ,int ,int *) ;
 int nfsvno_relpathbuf (struct nameidata*) ;
 int vput (struct vnode*) ;
 int vrele (struct vnode*) ;

void
nfsvno_open(struct nfsrv_descript *nd, struct nameidata *ndp,
    nfsquad_t clientid, nfsv4stateid_t *stateidp, struct nfsstate *stp,
    int *exclusive_flagp, struct nfsvattr *nvap, int32_t *cverf, int create,
    NFSACL_T *aclp, nfsattrbit_t *attrbitp, struct ucred *cred,
    struct nfsexstuff *exp, struct vnode **vpp)
{
 struct vnode *vp = ((void*)0);
 u_quad_t tempsize;
 struct nfsexstuff nes;
 struct thread *p = curthread;

 if (ndp->ni_vp == ((void*)0))
  nd->nd_repstat = nfsrv_opencheck(clientid,
      stateidp, stp, ((void*)0), nd, p, nd->nd_repstat);
 if (!nd->nd_repstat) {
  if (ndp->ni_vp == ((void*)0)) {
   vrele(ndp->ni_startdir);
   nd->nd_repstat = VOP_CREATE(ndp->ni_dvp,
       &ndp->ni_vp, &ndp->ni_cnd, &nvap->na_vattr);

   if (nd->nd_repstat == 0) {





    nfsrv_pnfscreate(ndp->ni_vp, &nvap->na_vattr,
        cred, p);
   }
   vput(ndp->ni_dvp);
   nfsvno_relpathbuf(ndp);
   if (!nd->nd_repstat) {
    if (*exclusive_flagp) {
     *exclusive_flagp = 0;
     NFSVNO_ATTRINIT(nvap);
     nvap->na_atime.tv_sec = cverf[0];
     nvap->na_atime.tv_nsec = cverf[1];
     nd->nd_repstat = VOP_SETATTR(ndp->ni_vp,
         &nvap->na_vattr, cred);
     if (nd->nd_repstat != 0) {
      vput(ndp->ni_vp);
      ndp->ni_vp = ((void*)0);
      nd->nd_repstat = NFSERR_NOTSUPP;
     } else
      NFSSETBIT_ATTRBIT(attrbitp,
          NFSATTRBIT_TIMEACCESS);
    } else {
     nfsrv_fixattr(nd, ndp->ni_vp, nvap,
         aclp, p, attrbitp, exp);
    }
   }
   vp = ndp->ni_vp;
  } else {
   if (ndp->ni_startdir)
    vrele(ndp->ni_startdir);
   nfsvno_relpathbuf(ndp);
   vp = ndp->ni_vp;
   if (create == NFSV4OPEN_CREATE) {
    if (ndp->ni_dvp == vp)
     vrele(ndp->ni_dvp);
    else
     vput(ndp->ni_dvp);
   }
   if (NFSVNO_ISSETSIZE(nvap) && vp->v_type == VREG) {
    if (ndp->ni_cnd.cn_flags & RDONLY)
     NFSVNO_SETEXRDONLY(&nes);
    else
     NFSVNO_EXINIT(&nes);
    nd->nd_repstat = nfsvno_accchk(vp,
        VWRITE, cred, &nes, p,
        NFSACCCHK_NOOVERRIDE,
        NFSACCCHK_VPISLOCKED, ((void*)0));
    nd->nd_repstat = nfsrv_opencheck(clientid,
        stateidp, stp, vp, nd, p, nd->nd_repstat);
    if (!nd->nd_repstat) {
     tempsize = nvap->na_size;
     NFSVNO_ATTRINIT(nvap);
     nvap->na_size = tempsize;
     nd->nd_repstat = VOP_SETATTR(vp,
         &nvap->na_vattr, cred);
    }
   } else if (vp->v_type == VREG) {
    nd->nd_repstat = nfsrv_opencheck(clientid,
        stateidp, stp, vp, nd, p, nd->nd_repstat);
   }
  }
 } else {
  if (ndp->ni_cnd.cn_flags & HASBUF)
   nfsvno_relpathbuf(ndp);
  if (ndp->ni_startdir && create == NFSV4OPEN_CREATE) {
   vrele(ndp->ni_startdir);
   if (ndp->ni_dvp == ndp->ni_vp)
    vrele(ndp->ni_dvp);
   else
    vput(ndp->ni_dvp);
   if (ndp->ni_vp)
    vput(ndp->ni_vp);
  }
 }
 *vpp = vp;

 NFSEXITCODE2(0, nd);
}
