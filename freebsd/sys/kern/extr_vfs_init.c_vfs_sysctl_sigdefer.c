
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sysctl_req {int dummy; } ;
struct mount {TYPE_2__* mnt_vfc; } ;
typedef int fsctlop_t ;
struct TYPE_4__ {TYPE_1__* vfc_vfsops_sd; } ;
struct TYPE_3__ {int (* vfs_sysctl ) (struct mount*,int ,struct sysctl_req*) ;} ;


 int SIGDEFERSTOP_SILENT ;
 int sigallowstop (int) ;
 int sigdeferstop (int ) ;
 int stub1 (struct mount*,int ,struct sysctl_req*) ;

__attribute__((used)) static int
vfs_sysctl_sigdefer(struct mount *mp, fsctlop_t op, struct sysctl_req *req)
{
 int prev_stops, rc;

 prev_stops = sigdeferstop(SIGDEFERSTOP_SILENT);
 rc = (*mp->mnt_vfc->vfc_vfsops_sd->vfs_sysctl)(mp, op, req);
 sigallowstop(prev_stops);
 return (rc);
}
