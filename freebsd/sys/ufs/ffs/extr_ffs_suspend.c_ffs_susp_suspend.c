
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct ufsmount {int um_flags; int um_devvp; } ;
struct mount {int dummy; } ;
struct TYPE_3__ {int td_ucred; } ;


 int EBUSY ;
 int EINVAL ;
 int EPERM ;
 int LK_EXCLUSIVE ;
 int LK_RETRY ;
 int SA_XLOCKED ;
 int UFS_LOCK (struct ufsmount*) ;
 int UFS_UNLOCK (struct ufsmount*) ;
 int UM_WRITESUSPENDED ;
 struct ufsmount* VFSTOUFS (struct mount*) ;
 int VOP_ACCESS (int ,int,int ,TYPE_1__*) ;
 int VOP_UNLOCK (int ,int ) ;
 int VREAD ;
 int VS_SKIP_UNMOUNT ;
 int VWRITE ;
 TYPE_1__* curthread ;
 int ffs_own_mount (struct mount*) ;
 int ffs_susp_lock ;
 scalar_t__ ffs_susp_suspended (struct mount*) ;
 scalar_t__ mac_mount_check_stat (int ,struct mount*) ;
 int sx_assert (int *,int ) ;
 int vfs_write_suspend (struct mount*,int ) ;
 int vn_lock (int ,int) ;

__attribute__((used)) static int
ffs_susp_suspend(struct mount *mp)
{
 struct ufsmount *ump;
 int error;

 sx_assert(&ffs_susp_lock, SA_XLOCKED);

 if (!ffs_own_mount(mp))
  return (EINVAL);
 if (ffs_susp_suspended(mp))
  return (EBUSY);

 ump = VFSTOUFS(mp);






 vn_lock(ump->um_devvp, LK_EXCLUSIVE | LK_RETRY);
 error = VOP_ACCESS(ump->um_devvp, VREAD | VWRITE,
     curthread->td_ucred, curthread);
 VOP_UNLOCK(ump->um_devvp, 0);
 if (error != 0)
  return (error);





 if ((error = vfs_write_suspend(mp, VS_SKIP_UNMOUNT)) != 0)
  return (error);

 UFS_LOCK(ump);
 ump->um_flags |= UM_WRITESUSPENDED;
 UFS_UNLOCK(ump);

 return (0);
}
