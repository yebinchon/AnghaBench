
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uid_t ;
struct unionfs_mount {TYPE_1__* um_uppervp; } ;
struct mount {int dummy; } ;
struct TYPE_2__ {int v_mount; } ;


 struct unionfs_mount* MOUNTTOUNIONFSMOUNT (struct mount*) ;
 int VFS_QUOTACTL (int ,int,int ,void*) ;

__attribute__((used)) static int
unionfs_quotactl(struct mount *mp, int cmd, uid_t uid, void *arg)
{
 struct unionfs_mount *ump;

 ump = MOUNTTOUNIONFSMOUNT(mp);




 return (VFS_QUOTACTL(ump->um_uppervp->v_mount, cmd, uid, arg));
}
