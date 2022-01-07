
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tmpfs_node {scalar_t__ tn_type; } ;
struct tmpfs_mount {int tm_nodes_used; } ;
struct mount {scalar_t__ mnt_nvnodelistsize; int mnt_flag; int * mnt_data; } ;


 int EBUSY ;
 int FORCECLOSE ;
 struct tmpfs_node* LIST_FIRST (int *) ;
 int MNT_FORCE ;
 int MNT_ILOCK (struct mount*) ;
 int MNT_IUNLOCK (struct mount*) ;
 int MNT_LOCAL ;
 int TMPFS_LOCK (struct tmpfs_mount*) ;
 int TMPFS_NODE_LOCK (struct tmpfs_node*) ;
 int TMPFS_NODE_UNLOCK (struct tmpfs_node*) ;
 scalar_t__ VDIR ;
 struct tmpfs_mount* VFS_TO_TMPFS (struct mount*) ;
 int VR_START_WRITE ;
 int curthread ;
 int tmpfs_dir_destroy (struct tmpfs_mount*,struct tmpfs_node*) ;
 scalar_t__ tmpfs_free_node_locked (struct tmpfs_mount*,struct tmpfs_node*,int) ;
 int tmpfs_free_tmp (struct tmpfs_mount*) ;
 int vflush (struct mount*,int ,int,int ) ;
 int vfs_write_resume (struct mount*,int ) ;
 int vfs_write_suspend_umnt (struct mount*) ;

__attribute__((used)) static int
tmpfs_unmount(struct mount *mp, int mntflags)
{
 struct tmpfs_mount *tmp;
 struct tmpfs_node *node;
 int error, flags;

 flags = (mntflags & MNT_FORCE) != 0 ? FORCECLOSE : 0;
 tmp = VFS_TO_TMPFS(mp);


 error = vfs_write_suspend_umnt(mp);
 if (error != 0)
  return (error);





 for (;;) {
  error = vflush(mp, 0, flags, curthread);
  if (error != 0) {
   vfs_write_resume(mp, VR_START_WRITE);
   return (error);
  }
  MNT_ILOCK(mp);
  if (mp->mnt_nvnodelistsize == 0) {
   MNT_IUNLOCK(mp);
   break;
  }
  MNT_IUNLOCK(mp);
  if ((mntflags & MNT_FORCE) == 0) {
   vfs_write_resume(mp, VR_START_WRITE);
   return (EBUSY);
  }
 }

 TMPFS_LOCK(tmp);
 while ((node = LIST_FIRST(&tmp->tm_nodes_used)) != ((void*)0)) {
  TMPFS_NODE_LOCK(node);
  if (node->tn_type == VDIR)
   tmpfs_dir_destroy(tmp, node);
  if (tmpfs_free_node_locked(tmp, node, 1))
   TMPFS_LOCK(tmp);
  else
   TMPFS_NODE_UNLOCK(node);
 }

 mp->mnt_data = ((void*)0);
 tmpfs_free_tmp(tmp);
 vfs_write_resume(mp, VR_START_WRITE);

 MNT_ILOCK(mp);
 mp->mnt_flag &= ~MNT_LOCAL;
 MNT_IUNLOCK(mp);

 return (0);
}
