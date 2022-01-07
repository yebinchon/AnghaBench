
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vnode_t ;
struct vattr {int va_mode; int va_type; scalar_t__ va_size; int va_gid; int va_uid; } ;
struct ucred {int dummy; } ;
struct pnfsdsfile {int dsf_filename; } ;
struct nfsdevice {int dummy; } ;
typedef int fhandle_t ;
typedef int NFSPROC_T ;


 int NFSD_DEBUG (int,char*,int ,struct pnfsdsfile*) ;
 int VATTR_NULL (struct vattr*) ;
 int VOP_GETATTR (int ,struct vattr*,struct ucred*) ;
 int VREG ;
 int nfsrv_dscreate (int ,struct vattr*,struct vattr*,int *,struct pnfsdsfile*,int *,int ,struct ucred*,int *,int *) ;

__attribute__((used)) static int
nfsrv_createdsfile(vnode_t vp, fhandle_t *fhp, struct pnfsdsfile *pf,
    vnode_t dvp, struct nfsdevice *ds, struct ucred *cred, NFSPROC_T *p,
    vnode_t *tvpp)
{
 struct vattr va, nva;
 int error;


 error = VOP_GETATTR(vp, &va, cred);
 if (error == 0) {

  VATTR_NULL(&nva);
  nva.va_uid = va.va_uid;
  nva.va_gid = va.va_gid;
  nva.va_mode = va.va_mode;
  nva.va_size = 0;
  VATTR_NULL(&va);
  va.va_type = VREG;
  va.va_mode = nva.va_mode;
  NFSD_DEBUG(4, "nfsrv_dscreatefile: dvp=%p pf=%p\n", dvp, pf);
  error = nfsrv_dscreate(dvp, &va, &nva, fhp, pf, ((void*)0),
      pf->dsf_filename, cred, p, tvpp);
 }
 return (error);
}
