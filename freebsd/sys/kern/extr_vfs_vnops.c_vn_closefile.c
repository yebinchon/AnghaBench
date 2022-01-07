
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnode {int dummy; } ;
struct thread {int dummy; } ;
struct flock {int l_type; scalar_t__ l_len; scalar_t__ l_start; int l_whence; } ;
struct file {int f_flag; scalar_t__ f_type; int f_cred; int * f_ops; struct vnode* f_vnode; } ;


 scalar_t__ DTYPE_VNODE ;
 int FHASLOCK ;
 int F_FLOCK ;
 int F_UNLCK ;
 int SEEK_SET ;
 int VOP_ADVLOCK (struct vnode*,struct file*,int ,struct flock*,int ) ;
 scalar_t__ __predict_false (int) ;
 int badfileops ;
 int vn_close1 (struct vnode*,int,int ,struct thread*,int) ;
 int vrele (struct vnode*) ;

__attribute__((used)) static int
vn_closefile(struct file *fp, struct thread *td)
{
 struct vnode *vp;
 struct flock lf;
 int error;
 bool ref;

 vp = fp->f_vnode;
 fp->f_ops = &badfileops;
 ref= (fp->f_flag & FHASLOCK) != 0 && fp->f_type == DTYPE_VNODE;

 error = vn_close1(vp, fp->f_flag, fp->f_cred, td, ref);

 if (__predict_false(ref)) {
  lf.l_whence = SEEK_SET;
  lf.l_start = 0;
  lf.l_len = 0;
  lf.l_type = F_UNLCK;
  (void) VOP_ADVLOCK(vp, fp, F_UNLCK, &lf, F_FLOCK);
  vrele(vp);
 }
 return (error);
}
