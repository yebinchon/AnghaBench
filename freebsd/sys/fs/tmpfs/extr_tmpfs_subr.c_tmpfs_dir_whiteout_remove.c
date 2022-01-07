
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnode {int v_mount; } ;
struct tmpfs_dirent {int * td_node; } ;
struct componentname {int dummy; } ;


 int MPASS (int) ;
 int VFS_TO_TMPFS (int ) ;
 int VP_TO_TMPFS_DIR (struct vnode*) ;
 int tmpfs_dir_detach (struct vnode*,struct tmpfs_dirent*) ;
 struct tmpfs_dirent* tmpfs_dir_lookup (int ,int *,struct componentname*) ;
 int tmpfs_free_dirent (int ,struct tmpfs_dirent*) ;

void
tmpfs_dir_whiteout_remove(struct vnode *dvp, struct componentname *cnp)
{
 struct tmpfs_dirent *de;

 de = tmpfs_dir_lookup(VP_TO_TMPFS_DIR(dvp), ((void*)0), cnp);
 MPASS(de != ((void*)0) && de->td_node == ((void*)0));
 tmpfs_dir_detach(dvp, de);
 tmpfs_free_dirent(VFS_TO_TMPFS(dvp->v_mount), de);
}
