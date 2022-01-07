
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnode {struct mount* v_mount; } ;
struct ucred {int dummy; } ;
struct mount {int mnt_flag; } ;


 int ASSERT_VOP_LOCKED (struct vnode*,char*) ;
 int MNT_NOATIME ;
 int MNT_RDONLY ;
 int VOP_MARKATIME (struct vnode*) ;

void
vfs_mark_atime(struct vnode *vp, struct ucred *cred)
{
 struct mount *mp;

 mp = vp->v_mount;
 ASSERT_VOP_LOCKED(vp, "vfs_mark_atime");
 if (mp != ((void*)0) && (mp->mnt_flag & (MNT_NOATIME | MNT_RDONLY)) == 0)
  (void)VOP_MARKATIME(vp);
}
