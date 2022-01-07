
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct statfs {int f_flags; int f_namemax; int f_version; } ;
struct mount {int mnt_flag; TYPE_1__* mnt_op; int mnt_stat; } ;
struct TYPE_2__ {int (* vfs_statfs ) (struct mount*,struct statfs*) ;} ;


 int MNT_VISFLAGMASK ;
 int NAME_MAX ;
 int STATFS_VERSION ;
 int memcpy (struct statfs*,int *,int) ;
 int stub1 (struct mount*,struct statfs*) ;

int
__vfs_statfs(struct mount *mp, struct statfs *sbp)
{





 memcpy(sbp, &mp->mnt_stat, sizeof(*sbp));




 sbp->f_version = STATFS_VERSION;
 sbp->f_namemax = NAME_MAX;
 sbp->f_flags = mp->mnt_flag & MNT_VISFLAGMASK;

 return (mp->mnt_op->vfs_statfs(mp, sbp));
}
