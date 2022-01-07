
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ bv_cnt; } ;
struct bufobj {scalar_t__ bo_numoutput; TYPE_1__ bo_dirty; } ;
struct vnode {struct bufobj v_bufobj; } ;
struct mount {scalar_t__ mnt_secondary_writes; int mnt_secondary_accwrites; } ;


 int ASSERT_BO_WLOCKED (struct bufobj*) ;
 int BO_LOCK (struct bufobj*) ;
 int BO_UNLOCK (struct bufobj*) ;
 int EAGAIN ;
 int MNT_ILOCK (struct mount*) ;
 int MNT_MTX (struct mount*) ;
 int PDROP ;
 int PUSER ;
 int msleep (scalar_t__*,int ,int,char*,int ) ;

int
softdep_check_suspend(struct mount *mp,
        struct vnode *devvp,
        int softdep_depcnt,
        int softdep_accdepcnt,
        int secondary_writes,
        int secondary_accwrites)
{
 struct bufobj *bo;
 int error;

 (void) softdep_depcnt,
 (void) softdep_accdepcnt;

 bo = &devvp->v_bufobj;
 ASSERT_BO_WLOCKED(bo);

 MNT_ILOCK(mp);
 while (mp->mnt_secondary_writes != 0) {
  BO_UNLOCK(bo);
  msleep(&mp->mnt_secondary_writes, MNT_MTX(mp),
      (PUSER - 1) | PDROP, "secwr", 0);
  BO_LOCK(bo);
  MNT_ILOCK(mp);
 }






 error = 0;
 if (bo->bo_numoutput > 0 ||
     bo->bo_dirty.bv_cnt > 0 ||
     secondary_writes != 0 ||
     mp->mnt_secondary_writes != 0 ||
     secondary_accwrites != mp->mnt_secondary_accwrites)
  error = EAGAIN;
 BO_UNLOCK(bo);
 return (error);
}
