
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int uintmax_t ;
struct vattr {scalar_t__ va_fileid; scalar_t__ va_fsid; } ;
struct thread {int td_ucred; } ;
struct nameidata {TYPE_1__* ni_vp; } ;
struct md_s {scalar_t__ fwsectors; scalar_t__ fwheads; int flags; TYPE_1__* vnode; int ident; int file; } ;
struct md_req {char* md_file; scalar_t__ md_file_seg; int md_options; scalar_t__ md_fwsectors; scalar_t__ md_fwheads; } ;
struct TYPE_6__ {scalar_t__ v_type; int v_iflag; int v_vflag; } ;


 int EBADF ;
 int EDOOFUS ;
 int EINVAL ;
 int FOLLOW ;
 int FREAD ;
 int FWRITE ;
 int LK_EXCLUSIVE ;
 int LK_RETRY ;
 int LK_UPGRADE ;
 int LOOKUP ;
 int MD_ASYNC ;
 int MD_CACHE ;
 int MD_FORCE ;
 int MD_READONLY ;
 int MD_VERIFY ;
 int NDFREE (struct nameidata*,int ) ;
 int NDF_ONLY_PNBUF ;
 int NDINIT (struct nameidata*,int ,int ,scalar_t__,int ,struct thread*) ;
 int O_VERIFY ;
 scalar_t__ UIO_SYSSPACE ;
 scalar_t__ UIO_USERSPACE ;
 int VI_DOOMED ;
 int VOP_GETATTR (TYPE_1__*,struct vattr*,int ) ;
 int VOP_ISLOCKED (TYPE_1__*) ;
 int VOP_UNLOCK (TYPE_1__*,int ) ;
 scalar_t__ VREG ;
 int VV_MD ;
 int copyinstr (char*,int ,int,int *) ;
 int mdsetcred (struct md_s*,int ) ;
 int snprintf (int ,int,char*,int ,int ) ;
 int strlcpy (int ,char*,int) ;
 int vn_close (TYPE_1__*,int,int ,struct thread*) ;
 int vn_lock (TYPE_1__*,int) ;
 int vn_open (struct nameidata*,int*,int ,int *) ;

__attribute__((used)) static int
mdcreate_vnode(struct md_s *sc, struct md_req *mdr, struct thread *td)
{
 struct vattr vattr;
 struct nameidata nd;
 char *fname;
 int error, flags;

 fname = mdr->md_file;
 if (mdr->md_file_seg == UIO_USERSPACE) {
  error = copyinstr(fname, sc->file, sizeof(sc->file), ((void*)0));
  if (error != 0)
   return (error);
 } else if (mdr->md_file_seg == UIO_SYSSPACE)
  strlcpy(sc->file, fname, sizeof(sc->file));
 else
  return (EDOOFUS);





 flags = FREAD | ((mdr->md_options & MD_READONLY) ? 0 : FWRITE) | ((mdr->md_options & MD_VERIFY) ? O_VERIFY : 0);

 NDINIT(&nd, LOOKUP, FOLLOW, UIO_SYSSPACE, sc->file, td);
 error = vn_open(&nd, &flags, 0, ((void*)0));
 if (error != 0)
  return (error);
 NDFREE(&nd, NDF_ONLY_PNBUF);
 if (nd.ni_vp->v_type != VREG) {
  error = EINVAL;
  goto bad;
 }
 error = VOP_GETATTR(nd.ni_vp, &vattr, td->td_ucred);
 if (error != 0)
  goto bad;
 if (VOP_ISLOCKED(nd.ni_vp) != LK_EXCLUSIVE) {
  vn_lock(nd.ni_vp, LK_UPGRADE | LK_RETRY);
  if (nd.ni_vp->v_iflag & VI_DOOMED) {

   error = EBADF;
   goto bad;
  }
 }
 nd.ni_vp->v_vflag |= VV_MD;
 VOP_UNLOCK(nd.ni_vp, 0);

 if (mdr->md_fwsectors != 0)
  sc->fwsectors = mdr->md_fwsectors;
 if (mdr->md_fwheads != 0)
  sc->fwheads = mdr->md_fwheads;
 snprintf(sc->ident, sizeof(sc->ident), "MD-DEV%ju-INO%ju",
     (uintmax_t)vattr.va_fsid, (uintmax_t)vattr.va_fileid);
 sc->flags = mdr->md_options & (MD_ASYNC | MD_CACHE | MD_FORCE |
     MD_VERIFY);
 if (!(flags & FWRITE))
  sc->flags |= MD_READONLY;
 sc->vnode = nd.ni_vp;

 error = mdsetcred(sc, td->td_ucred);
 if (error != 0) {
  sc->vnode = ((void*)0);
  vn_lock(nd.ni_vp, LK_EXCLUSIVE | LK_RETRY);
  nd.ni_vp->v_vflag &= ~VV_MD;
  goto bad;
 }
 return (0);
bad:
 VOP_UNLOCK(nd.ni_vp, 0);
 (void)vn_close(nd.ni_vp, flags, td->td_ucred, td);
 return (error);
}
