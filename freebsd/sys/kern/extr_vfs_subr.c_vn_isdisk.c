
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vnode {scalar_t__ v_type; TYPE_2__* v_rdev; } ;
struct TYPE_4__ {TYPE_1__* si_devsw; } ;
struct TYPE_3__ {int d_flags; } ;


 int D_DISK ;
 int ENOTBLK ;
 int ENXIO ;
 scalar_t__ VCHR ;
 int dev_lock () ;
 int dev_unlock () ;

int
vn_isdisk(struct vnode *vp, int *errp)
{
 int error;

 if (vp->v_type != VCHR) {
  error = ENOTBLK;
  goto out;
 }
 error = 0;
 dev_lock();
 if (vp->v_rdev == ((void*)0))
  error = ENXIO;
 else if (vp->v_rdev->si_devsw == ((void*)0))
  error = ENXIO;
 else if (!(vp->v_rdev->si_devsw->d_flags & D_DISK))
  error = ENOTBLK;
 dev_unlock();
out:
 if (errp != ((void*)0))
  *errp = error;
 return (error == 0);
}
