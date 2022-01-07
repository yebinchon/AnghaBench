
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vnode {int dummy; } ;
struct ucred {int dummy; } ;
struct thread {TYPE_1__* td_proc; } ;
struct fuse_release_in {int lock_owner; int flags; int fh; } ;
struct fuse_filehandle {int fufh_type; int fh_id; } ;
struct fuse_dispatcher {struct fuse_release_in* indata; } ;
struct TYPE_2__ {int p_pid; } ;


 int FUSE_RELEASE ;
 int FUSE_RELEASEDIR ;
 int LIST_REMOVE (struct fuse_filehandle*,int ) ;
 int M_FUSE_FILEHANDLE ;
 int counter_u64_add (int ,int) ;
 int fdisp_destroy (struct fuse_dispatcher*) ;
 int fdisp_init (struct fuse_dispatcher*,int) ;
 int fdisp_make_vp (struct fuse_dispatcher*,int,struct vnode*,struct thread*,struct ucred*) ;
 int fdisp_wait_answ (struct fuse_dispatcher*) ;
 int free (struct fuse_filehandle*,int ) ;
 int fufh_type_2_fflags (int ) ;
 int fuse_fh_count ;
 scalar_t__ fuse_isdeadfs (struct vnode*) ;
 int next ;
 scalar_t__ vnode_isdir (struct vnode*) ;

int
fuse_filehandle_close(struct vnode *vp, struct fuse_filehandle *fufh,
    struct thread *td, struct ucred *cred)
{
 struct fuse_dispatcher fdi;
 struct fuse_release_in *fri;

 int err = 0;
 int op = FUSE_RELEASE;

 if (fuse_isdeadfs(vp)) {
  goto out;
 }
 if (vnode_isdir(vp))
  op = FUSE_RELEASEDIR;
 fdisp_init(&fdi, sizeof(*fri));
 fdisp_make_vp(&fdi, op, vp, td, cred);
 fri = fdi.indata;
 fri->fh = fufh->fh_id;
 fri->flags = fufh_type_2_fflags(fufh->fufh_type);





 fri->lock_owner = td->td_proc->p_pid;

 err = fdisp_wait_answ(&fdi);
 fdisp_destroy(&fdi);

out:
 counter_u64_add(fuse_fh_count, -1);
 LIST_REMOVE(fufh, next);
 free(fufh, M_FUSE_FILEHANDLE);

 return err;
}
