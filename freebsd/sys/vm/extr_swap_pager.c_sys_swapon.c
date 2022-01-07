
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vnode {scalar_t__ v_type; TYPE_2__* v_mount; } ;
struct vattr {int va_size; } ;
struct thread {int td_ucred; } ;
struct swapon_args {int name; } ;
struct nameidata {struct vnode* ni_vp; } ;
struct TYPE_4__ {TYPE_1__* mnt_vfc; } ;
struct TYPE_3__ {int vfc_flags; } ;


 int AUDITVNODE1 ;
 int DEV_BSIZE ;
 int ENOMEM ;
 int FOLLOW ;
 int ISOPEN ;
 int LOOKUP ;
 int NDFREE (struct nameidata*,int ) ;
 int NDF_ONLY_PNBUF ;
 int NDINIT (struct nameidata*,int ,int,int ,int ,struct thread*) ;
 int PRIV_SWAPON ;
 int UIO_USERSPACE ;
 int VFCF_NETWORK ;
 int VOP_GETATTR (struct vnode*,struct vattr*,int ) ;
 scalar_t__ VREG ;
 int namei (struct nameidata*) ;
 int priv_check (struct thread*,int ) ;
 int swapongeom (struct vnode*) ;
 int swaponvp (struct thread*,struct vnode*,int) ;
 int * swblk_zone ;
 int swdev_syscall_lock ;
 int sx_xlock (int *) ;
 int sx_xunlock (int *) ;
 scalar_t__ vn_isdisk (struct vnode*,int*) ;
 int vrele (struct vnode*) ;

int
sys_swapon(struct thread *td, struct swapon_args *uap)
{
 struct vattr attr;
 struct vnode *vp;
 struct nameidata nd;
 int error;

 error = priv_check(td, PRIV_SWAPON);
 if (error)
  return (error);

 sx_xlock(&swdev_syscall_lock);





 if (swblk_zone == ((void*)0)) {
  error = ENOMEM;
  goto done;
 }

 NDINIT(&nd, LOOKUP, ISOPEN | FOLLOW | AUDITVNODE1, UIO_USERSPACE,
     uap->name, td);
 error = namei(&nd);
 if (error)
  goto done;

 NDFREE(&nd, NDF_ONLY_PNBUF);
 vp = nd.ni_vp;

 if (vn_isdisk(vp, &error)) {
  error = swapongeom(vp);
 } else if (vp->v_type == VREG &&
     (vp->v_mount->mnt_vfc->vfc_flags & VFCF_NETWORK) != 0 &&
     (error = VOP_GETATTR(vp, &attr, td->td_ucred)) == 0) {




  error = swaponvp(td, vp, attr.va_size / DEV_BSIZE);
 }

 if (error)
  vrele(vp);
done:
 sx_xunlock(&swdev_syscall_lock);
 return (error);
}
