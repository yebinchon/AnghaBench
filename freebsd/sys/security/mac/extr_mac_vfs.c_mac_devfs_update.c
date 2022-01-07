
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnode {int v_label; } ;
struct mount {int dummy; } ;
struct devfs_dirent {int de_label; } ;


 int MAC_POLICY_PERFORM_NOSLEEP (int ,struct mount*,struct devfs_dirent*,int ,struct vnode*,int ) ;
 int devfs_update ;

void
mac_devfs_update(struct mount *mp, struct devfs_dirent *de, struct vnode *vp)
{

 MAC_POLICY_PERFORM_NOSLEEP(devfs_update, mp, de, de->de_label, vp,
     vp->v_label);
}
