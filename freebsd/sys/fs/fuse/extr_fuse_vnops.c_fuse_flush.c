
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vnode {int dummy; } ;
struct ucred {int dummy; } ;
struct thread {TYPE_1__* td_proc; } ;
struct mount {int dummy; } ;
struct fuse_flush_in {int lock_owner; int fh; } ;
struct fuse_filehandle {int fh_id; } ;
struct fuse_dispatcher {struct fuse_flush_in* indata; } ;
typedef int pid_t ;
struct TYPE_2__ {int p_pid; } ;


 int ENOSYS ;
 int FUSE_FLUSH ;
 struct thread* curthread ;
 int fdisp_destroy (struct fuse_dispatcher*) ;
 int fdisp_init (struct fuse_dispatcher*,int) ;
 int fdisp_make_vp (struct fuse_dispatcher*,int ,struct vnode*,struct thread*,struct ucred*) ;
 int fdisp_wait_answ (struct fuse_dispatcher*) ;
 int fsess_isimpl (struct mount*,int ) ;
 int fsess_set_notimpl (struct mount*,int ) ;
 int fuse_filehandle_getrw (struct vnode*,int,struct fuse_filehandle**,struct ucred*,int ) ;
 struct mount* vnode_mount (struct vnode*) ;

__attribute__((used)) static int
fuse_flush(struct vnode *vp, struct ucred *cred, pid_t pid, int fflag)
{
 struct fuse_flush_in *ffi;
 struct fuse_filehandle *fufh;
 struct fuse_dispatcher fdi;
 struct thread *td = curthread;
 struct mount *mp = vnode_mount(vp);
 int err;

 if (!fsess_isimpl(vnode_mount(vp), FUSE_FLUSH))
  return 0;

 err = fuse_filehandle_getrw(vp, fflag, &fufh, cred, pid);
 if (err)
  return err;

 fdisp_init(&fdi, sizeof(*ffi));
 fdisp_make_vp(&fdi, FUSE_FLUSH, vp, td, cred);
 ffi = fdi.indata;
 ffi->fh = fufh->fh_id;





 ffi->lock_owner = td->td_proc->p_pid;

 err = fdisp_wait_answ(&fdi);
 if (err == ENOSYS) {
  fsess_set_notimpl(mp, FUSE_FLUSH);
  err = 0;
 }
 fdisp_destroy(&fdi);
 return err;
}
