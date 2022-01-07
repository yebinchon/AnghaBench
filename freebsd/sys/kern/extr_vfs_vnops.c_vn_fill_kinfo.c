
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnode {int dummy; } ;
struct kinfo_file {int kf_type; } ;
struct filedesc {int dummy; } ;
struct file {scalar_t__ f_type; struct vnode* f_vnode; } ;


 scalar_t__ DTYPE_FIFO ;
 int FILEDESC_SLOCK (struct filedesc*) ;
 int FILEDESC_SUNLOCK (struct filedesc*) ;
 int KF_TYPE_FIFO ;
 int KF_TYPE_VNODE ;
 int vn_fill_kinfo_vnode (struct vnode*,struct kinfo_file*) ;
 int vref (struct vnode*) ;
 int vrele (struct vnode*) ;

int
vn_fill_kinfo(struct file *fp, struct kinfo_file *kif, struct filedesc *fdp)
{
 struct vnode *vp;
 int error;

 if (fp->f_type == DTYPE_FIFO)
  kif->kf_type = KF_TYPE_FIFO;
 else
  kif->kf_type = KF_TYPE_VNODE;
 vp = fp->f_vnode;
 vref(vp);
 FILEDESC_SUNLOCK(fdp);
 error = vn_fill_kinfo_vnode(vp, kif);
 vrele(vp);
 FILEDESC_SLOCK(fdp);
 return (error);
}
