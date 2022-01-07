
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_long ;
struct vnode {int dummy; } ;
struct ucred {int dummy; } ;
struct mount {int dummy; } ;
typedef scalar_t__ off_t ;
typedef int intmax_t ;
struct TYPE_3__ {int td_ucred; } ;


 int IO_NODELOCKED ;
 int KASSERT (int,char*) ;
 int LK_EXCLUSIVE ;
 int LK_SHARED ;
 scalar_t__ MIN (scalar_t__,int ) ;
 scalar_t__ MNT_SHARED_WRITES (struct mount*) ;
 int UIO_SYSSPACE ;
 int UIO_WRITE ;
 int VOP_UNLOCK (struct vnode*,int ) ;
 int V_WAIT ;
 int bwillwrite () ;
 TYPE_1__* curthread ;
 int vn_finished_write (struct mount*) ;
 int vn_lock (struct vnode*,int) ;
 int vn_rdwr (int ,struct vnode*,char*,scalar_t__,scalar_t__,int ,int ,int ,struct ucred*,int *,TYPE_1__*) ;
 scalar_t__ vn_skip_hole (struct vnode*,scalar_t__,scalar_t__*,scalar_t__*,scalar_t__*,scalar_t__*,struct ucred*) ;
 int vn_start_write (struct vnode*,struct mount**,int ) ;
 int vn_truncate_locked (struct vnode*,scalar_t__,int,struct ucred*) ;

__attribute__((used)) static int
vn_write_outvp(struct vnode *outvp, char *dat, off_t outoff, off_t xfer,
    u_long blksize, bool growfile, bool checkhole, struct ucred *cred)
{
 struct mount *mp;
 off_t dataoff, holeoff, xfer2;
 int error, lckf;







 error = 0;
 holeoff = 0;
 do {
  xfer2 = MIN(xfer, blksize);
  if (checkhole) {




   xfer2 = vn_skip_hole(outvp, xfer2, &outoff, &xfer,
       &dataoff, &holeoff, cred);
   if (xfer == 0)
    break;
   if (holeoff < 0)
    checkhole = 0;
   KASSERT(xfer2 > 0, ("vn_write_outvp: xfer2=%jd",
       (intmax_t)xfer2));
  }
  bwillwrite();
  mp = ((void*)0);
  error = vn_start_write(outvp, &mp, V_WAIT);
  if (error == 0) {
   if (MNT_SHARED_WRITES(mp))
    lckf = LK_SHARED;
   else
    lckf = LK_EXCLUSIVE;
   error = vn_lock(outvp, lckf);
  }
  if (error == 0) {
   if (growfile)
    error = vn_truncate_locked(outvp, outoff + xfer,
        0, cred);
   else {
    error = vn_rdwr(UIO_WRITE, outvp, dat, xfer2,
        outoff, UIO_SYSSPACE, IO_NODELOCKED,
        curthread->td_ucred, cred, ((void*)0), curthread);
    outoff += xfer2;
    xfer -= xfer2;
   }
   VOP_UNLOCK(outvp, 0);
  }
  if (mp != ((void*)0))
   vn_finished_write(mp);
 } while (!growfile && xfer > 0 && error == 0);
 return (error);
}
