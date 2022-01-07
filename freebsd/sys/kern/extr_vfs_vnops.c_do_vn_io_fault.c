
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnode {scalar_t__ v_type; struct mount* v_mount; } ;
struct uio {scalar_t__ uio_segflg; } ;
struct mount {int mnt_kern_flag; } ;


 int MNTK_NO_IOPF ;
 scalar_t__ UIO_USERSPACE ;
 scalar_t__ VREG ;
 scalar_t__ vn_io_fault_enable ;

__attribute__((used)) static bool
do_vn_io_fault(struct vnode *vp, struct uio *uio)
{
 struct mount *mp;

 return (uio->uio_segflg == UIO_USERSPACE && vp->v_type == VREG &&
     (mp = vp->v_mount) != ((void*)0) &&
     (mp->mnt_kern_flag & MNTK_NO_IOPF) != 0 && vn_io_fault_enable);
}
