
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vnode {int dummy; } ;
struct mount {TYPE_2__* mnt_vfc; } ;
struct TYPE_4__ {TYPE_1__* vfc_vfsops_sd; } ;
struct TYPE_3__ {int (* vfs_extattrctl ) (struct mount*,int,struct vnode*,int,char const*) ;} ;


 int SIGDEFERSTOP_SILENT ;
 int sigallowstop (int) ;
 int sigdeferstop (int ) ;
 int stub1 (struct mount*,int,struct vnode*,int,char const*) ;

__attribute__((used)) static int
vfs_extattrctl_sigdefer(struct mount *mp, int cmd, struct vnode *filename_vp,
    int attrnamespace, const char *attrname)
{
 int prev_stops, rc;

 prev_stops = sigdeferstop(SIGDEFERSTOP_SILENT);
 rc = (*mp->mnt_vfc->vfc_vfsops_sd->vfs_extattrctl)(mp, cmd,
     filename_vp, attrnamespace, attrname);
 sigallowstop(prev_stops);
 return (rc);
}
