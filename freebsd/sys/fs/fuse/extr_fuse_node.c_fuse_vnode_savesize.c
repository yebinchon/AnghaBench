
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vnode {int dummy; } ;
struct ucred {int dummy; } ;
struct thread {struct ucred* td_ucred; } ;
struct TYPE_2__ {int va_size; } ;
struct fuse_vnode_data {int flag; TYPE_1__ cached_attrs; } ;
struct fuse_setattr_in {int valid; int fh; int size; } ;
struct fuse_filehandle {int fh_id; } ;
struct fuse_dispatcher {struct fuse_setattr_in* indata; } ;
typedef int pid_t ;


 int ASSERT_VOP_ELOCKED (struct vnode*,char*) ;
 int EBADF ;
 int EISDIR ;
 int EROFS ;
 int FATTR_FH ;
 int FATTR_SIZE ;
 int FN_SIZECHANGE ;
 int FUSE_SETATTR ;
 int FWRITE ;
 int MPASS (int) ;
 scalar_t__ VDIR ;
 struct fuse_vnode_data* VTOFUD (struct vnode*) ;
 struct thread* curthread ;
 int fdisp_destroy (struct fuse_dispatcher*) ;
 int fdisp_init (struct fuse_dispatcher*,int) ;
 int fdisp_make_vp (struct fuse_dispatcher*,int ,struct vnode*,struct thread*,struct ucred*) ;
 int fdisp_wait_answ (struct fuse_dispatcher*) ;
 int fuse_filehandle_getrw (struct vnode*,int ,struct fuse_filehandle**,struct ucred*,int ) ;
 scalar_t__ fuse_isdeadfs (struct vnode*) ;
 scalar_t__ vfs_isrdonly (int ) ;
 int vnode_mount (struct vnode*) ;
 scalar_t__ vnode_vtype (struct vnode*) ;

int
fuse_vnode_savesize(struct vnode *vp, struct ucred *cred, pid_t pid)
{
 struct fuse_vnode_data *fvdat = VTOFUD(vp);
 struct thread *td = curthread;
 struct fuse_filehandle *fufh = ((void*)0);
 struct fuse_dispatcher fdi;
 struct fuse_setattr_in *fsai;
 int err = 0;

 ASSERT_VOP_ELOCKED(vp, "fuse_io_extend");

 if (fuse_isdeadfs(vp)) {
  return EBADF;
 }
 if (vnode_vtype(vp) == VDIR) {
  return EISDIR;
 }
 if (vfs_isrdonly(vnode_mount(vp))) {
  return EROFS;
 }
 if (cred == ((void*)0)) {
  cred = td->td_ucred;
 }
 fdisp_init(&fdi, sizeof(*fsai));
 fdisp_make_vp(&fdi, FUSE_SETATTR, vp, td, cred);
 fsai = fdi.indata;
 fsai->valid = 0;


 MPASS((fvdat->flag & FN_SIZECHANGE) != 0);
 fsai->size = fvdat->cached_attrs.va_size;
 fsai->valid |= FATTR_SIZE;

 fuse_filehandle_getrw(vp, FWRITE, &fufh, cred, pid);
 if (fufh) {
  fsai->fh = fufh->fh_id;
  fsai->valid |= FATTR_FH;
 }
 err = fdisp_wait_answ(&fdi);
 fdisp_destroy(&fdi);
 if (err == 0)
  fvdat->flag &= ~FN_SIZECHANGE;

 return err;
}
