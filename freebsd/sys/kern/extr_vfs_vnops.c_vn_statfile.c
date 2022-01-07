
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnode {int dummy; } ;
struct ucred {int dummy; } ;
struct thread {int dummy; } ;
struct stat {int dummy; } ;
struct file {int f_cred; struct vnode* f_vnode; } ;


 int LK_RETRY ;
 int LK_SHARED ;
 int VOP_UNLOCK (struct vnode*,int ) ;
 int vn_lock (struct vnode*,int) ;
 int vn_stat (struct vnode*,struct stat*,struct ucred*,int ,struct thread*) ;

__attribute__((used)) static int
vn_statfile(struct file *fp, struct stat *sb, struct ucred *active_cred,
    struct thread *td)
{
 struct vnode *vp = fp->f_vnode;
 int error;

 vn_lock(vp, LK_SHARED | LK_RETRY);
 error = vn_stat(vp, sb, active_cred, fp->f_cred, td);
 VOP_UNLOCK(vp, 0);

 return (error);
}
