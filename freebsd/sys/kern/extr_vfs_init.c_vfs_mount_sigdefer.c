
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mount {TYPE_2__* mnt_vfc; } ;
struct TYPE_4__ {int vfc_name; TYPE_1__* vfc_vfsops_sd; } ;
struct TYPE_3__ {int (* vfs_mount ) (struct mount*) ;} ;


 int SIGDEFERSTOP_SILENT ;
 int TSRAW (int ,int ,char*,int ) ;
 int TS_ENTER ;
 int TS_EXIT ;
 int curthread ;
 int sigallowstop (int) ;
 int sigdeferstop (int ) ;
 int stub1 (struct mount*) ;

__attribute__((used)) static int
vfs_mount_sigdefer(struct mount *mp)
{
 int prev_stops, rc;

 TSRAW(curthread, TS_ENTER, "VFS_MOUNT", mp->mnt_vfc->vfc_name);
 prev_stops = sigdeferstop(SIGDEFERSTOP_SILENT);
 rc = (*mp->mnt_vfc->vfc_vfsops_sd->vfs_mount)(mp);
 sigallowstop(prev_stops);
 TSRAW(curthread, TS_EXIT, "VFS_MOUNT", mp->mnt_vfc->vfc_name);
 return (rc);
}
