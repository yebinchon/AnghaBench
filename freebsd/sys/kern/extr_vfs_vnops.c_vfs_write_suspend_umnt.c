
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mount {int mnt_kern_flag; int mnt_flag; } ;
struct TYPE_2__ {int td_pflags; } ;


 int KASSERT (int,char*) ;
 int MNTK_SUSPEND2 ;
 int MNTK_SUSPENDED ;
 int MNT_ILOCK (struct mount*) ;
 int MNT_IUNLOCK (struct mount*) ;
 int MPASS (int ) ;
 int TDP_IGNSUSP ;
 int V_WAIT ;
 TYPE_1__* curthread ;
 int vfs_write_suspend (struct mount*,int ) ;
 int vn_finished_write (struct mount*) ;
 int vn_start_write (int *,struct mount**,int ) ;
 int vn_suspendable (struct mount*) ;
 int wakeup (int *) ;

int
vfs_write_suspend_umnt(struct mount *mp)
{
 int error;

 MPASS(vn_suspendable(mp));
 KASSERT((curthread->td_pflags & TDP_IGNSUSP) == 0,
     ("vfs_write_suspend_umnt: recursed"));


 for (;;) {
  vn_finished_write(mp);
  error = vfs_write_suspend(mp, 0);
  if (error != 0) {
   vn_start_write(((void*)0), &mp, V_WAIT);
   return (error);
  }
  MNT_ILOCK(mp);
  if ((mp->mnt_kern_flag & MNTK_SUSPENDED) != 0)
   break;
  MNT_IUNLOCK(mp);
  vn_start_write(((void*)0), &mp, V_WAIT);
 }
 mp->mnt_kern_flag &= ~(MNTK_SUSPENDED | MNTK_SUSPEND2);
 wakeup(&mp->mnt_flag);
 MNT_IUNLOCK(mp);
 curthread->td_pflags |= TDP_IGNSUSP;
 return (0);
}
