
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vnode {int dummy; } ;
struct vattr {int dummy; } ;
struct ucred {int dummy; } ;
struct timespec {int tv_nsec; int tv_sec; } ;
struct thread {int dummy; } ;
struct TYPE_3__ {struct timespec va_mtime; struct timespec va_ctime; int va_size; } ;
struct fuse_vnode_data {int flag; TYPE_1__ cached_attrs; } ;
struct fuse_getattr_in {scalar_t__ getattr_flags; } ;
struct fuse_dispatcher {scalar_t__ answ; struct fuse_getattr_in* indata; } ;
struct TYPE_4__ {int mtimensec; int mtime; int ctimensec; int ctime; int size; int mode; } ;
struct fuse_attr_out {int attr_valid_nsec; int attr_valid; TYPE_2__ attr; } ;
typedef int off_t ;
typedef enum vtype { ____Placeholder_vtype } vtype ;


 int ENOENT ;
 int FN_CTIMECHANGE ;
 int FN_MTIMECHANGE ;
 int FN_SIZECHANGE ;
 int FUSE_GETATTR ;
 int IFTOVT (int ) ;
 struct fuse_vnode_data* VTOFUD (struct vnode*) ;
 int fdisp_destroy (struct fuse_dispatcher*) ;
 int fdisp_init (struct fuse_dispatcher*,int) ;
 int fdisp_make_vp (struct fuse_dispatcher*,int ,struct vnode*,struct thread*,struct ucred*) ;
 int fdisp_wait_answ (struct fuse_dispatcher*) ;
 int fuse_internal_cache_attrs (struct vnode*,TYPE_2__*,int ,int ,struct vattr*) ;
 int fuse_internal_vnode_disappear (struct vnode*) ;
 int vnode_vtype (struct vnode*) ;

int
fuse_internal_do_getattr(struct vnode *vp, struct vattr *vap,
 struct ucred *cred, struct thread *td)
{
 struct fuse_dispatcher fdi;
 struct fuse_vnode_data *fvdat = VTOFUD(vp);
 struct fuse_getattr_in *fgai;
 struct fuse_attr_out *fao;
 off_t old_filesize = fvdat->cached_attrs.va_size;
 struct timespec old_ctime = fvdat->cached_attrs.va_ctime;
 struct timespec old_mtime = fvdat->cached_attrs.va_mtime;
 enum vtype vtyp;
 int err;

 fdisp_init(&fdi, sizeof(*fgai));
 fdisp_make_vp(&fdi, FUSE_GETATTR, vp, td, cred);
 fgai = fdi.indata;





 fgai->getattr_flags = 0;
 if ((err = fdisp_wait_answ(&fdi))) {
  if (err == ENOENT)
   fuse_internal_vnode_disappear(vp);
  goto out;
 }

 fao = (struct fuse_attr_out *)fdi.answ;
 vtyp = IFTOVT(fao->attr.mode);
 if (fvdat->flag & FN_SIZECHANGE)
  fao->attr.size = old_filesize;
 if (fvdat->flag & FN_CTIMECHANGE) {
  fao->attr.ctime = old_ctime.tv_sec;
  fao->attr.ctimensec = old_ctime.tv_nsec;
 }
 if (fvdat->flag & FN_MTIMECHANGE) {
  fao->attr.mtime = old_mtime.tv_sec;
  fao->attr.mtimensec = old_mtime.tv_nsec;
 }
 fuse_internal_cache_attrs(vp, &fao->attr, fao->attr_valid,
  fao->attr_valid_nsec, vap);
 if (vtyp != vnode_vtype(vp)) {
  fuse_internal_vnode_disappear(vp);
  err = ENOENT;
 }

out:
 fdisp_destroy(&fdi);
 return err;
}
