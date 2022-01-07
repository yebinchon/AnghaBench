
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct vnode {int v_type; } ;
struct vattr {int va_gid; int va_uid; int va_mode; } ;
struct ucred {int dummy; } ;
struct thread {int dummy; } ;
struct mount {int dummy; } ;
struct fuse_dispatcher {struct fuse_access_in* indata; } ;
struct fuse_data {int dataflags; int daemoncred; } ;
struct fuse_access_in {int mask; } ;
typedef int accmode_t ;


 int ENOSYS ;
 int EPERM ;
 int EROFS ;
 int FSESS_DAEMON_CAN_SPY ;
 int FSESS_DEFAULT_PERMISSIONS ;
 int FUSE_ACCESS ;
 int F_OK ;
 int R_OK ;
 int VADMIN ;
 int VAPPEND ;

 int VEXEC ;

 int VMODIFY_PERMS ;
 int VREAD ;

 int VWRITE ;
 int W_OK ;
 int X_OK ;
 int fdisp_destroy (struct fuse_dispatcher*) ;
 int fdisp_init (struct fuse_dispatcher*,int) ;
 int fdisp_make_vp (struct fuse_dispatcher*,int ,struct vnode*,struct thread*,struct ucred*) ;
 int fdisp_wait_answ (struct fuse_dispatcher*) ;
 int fsess_isimpl (struct mount*,int ) ;
 int fsess_set_notimpl (struct mount*,int ) ;
 struct fuse_data* fuse_get_mpdata (struct mount*) ;
 int fuse_internal_getattr (struct vnode*,struct vattr*,struct ucred*,struct thread*) ;
 scalar_t__ fuse_match_cred (int ,struct ucred*) ;
 int vaccess (int,int ,int ,int ,int,struct ucred*,int *) ;
 scalar_t__ vfs_isrdonly (struct mount*) ;
 struct mount* vnode_mount (struct vnode*) ;
 int vnode_vtype (struct vnode*) ;

int
fuse_internal_access(struct vnode *vp,
    accmode_t mode,
    struct thread *td,
    struct ucred *cred)
{
 int err = 0;
 uint32_t mask = F_OK;
 int dataflags;
 int vtype;
 struct mount *mp;
 struct fuse_dispatcher fdi;
 struct fuse_access_in *fai;
 struct fuse_data *data;

 mp = vnode_mount(vp);
 vtype = vnode_vtype(vp);

 data = fuse_get_mpdata(mp);
 dataflags = data->dataflags;

 if (mode == 0)
  return 0;

 if (mode & VMODIFY_PERMS && vfs_isrdonly(mp)) {
  switch (vp->v_type) {
  case 130:

  case 129:

  case 128:
   return EROFS;
  default:
   break;
  }
 }


 if (!(dataflags & FSESS_DAEMON_CAN_SPY)) {
  if (fuse_match_cred(data->daemoncred, cred))
   return EPERM;
 }

 if (dataflags & FSESS_DEFAULT_PERMISSIONS) {
  struct vattr va;

  fuse_internal_getattr(vp, &va, cred, td);
  return vaccess(vp->v_type, va.va_mode, va.va_uid,
      va.va_gid, mode, cred, ((void*)0));
 }

 if (!fsess_isimpl(mp, FUSE_ACCESS))
  return 0;

 if ((mode & (VWRITE | VAPPEND | VADMIN)) != 0)
  mask |= W_OK;
 if ((mode & VREAD) != 0)
  mask |= R_OK;
 if ((mode & VEXEC) != 0)
  mask |= X_OK;

 fdisp_init(&fdi, sizeof(*fai));
 fdisp_make_vp(&fdi, FUSE_ACCESS, vp, td, cred);

 fai = fdi.indata;
 fai->mask = mask;

 err = fdisp_wait_answ(&fdi);
 fdisp_destroy(&fdi);

 if (err == ENOSYS) {
  fsess_set_notimpl(mp, FUSE_ACCESS);
  err = 0;
 }
 return err;
}
