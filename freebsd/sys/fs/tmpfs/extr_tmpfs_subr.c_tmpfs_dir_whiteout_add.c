
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnode {int v_mount; } ;
struct tmpfs_dirent {int dummy; } ;
struct componentname {int cn_namelen; int cn_nameptr; } ;


 int VFS_TO_TMPFS (int ) ;
 int tmpfs_alloc_dirent (int ,int *,int ,int ,struct tmpfs_dirent**) ;
 int tmpfs_dir_attach (struct vnode*,struct tmpfs_dirent*) ;

int
tmpfs_dir_whiteout_add(struct vnode *dvp, struct componentname *cnp)
{
 struct tmpfs_dirent *de;
 int error;

 error = tmpfs_alloc_dirent(VFS_TO_TMPFS(dvp->v_mount), ((void*)0),
     cnp->cn_nameptr, cnp->cn_namelen, &de);
 if (error != 0)
  return (error);
 tmpfs_dir_attach(dvp, de);
 return (0);
}
