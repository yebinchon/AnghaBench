
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vfsoptlist {int dummy; } ;
struct vfsconf {int dummy; } ;
struct thread {int td_ucred; } ;
struct mount {struct vfsoptlist* mnt_opt; int mnt_stat; } ;


 int AT_FDCWD ;
 int ENOENT ;
 int KASSERT (int,char*) ;
 int M_MOUNT ;
 int M_WAITOK ;
 int NULLVP ;
 int TAILQ_INIT (struct vfsoptlist*) ;
 int TAILQ_INSERT_HEAD (int *,struct mount*,int ) ;
 int UIO_SYSSPACE ;
 int VFS_MOUNT (struct mount*) ;
 int VFS_STATFS (struct mount*,int *) ;
 int kern_symlinkat (struct thread*,char*,int ,char*,int ) ;
 struct vfsoptlist* malloc (int,int ,int ) ;
 int mnt_list ;
 int mountlist ;
 int mountlist_mtx ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int printf (char*,int) ;
 struct mount* rootdevmp ;
 int set_rootvnode () ;
 int vfs_busy (struct mount*,int ) ;
 struct vfsconf* vfs_byname (char*) ;
 struct mount* vfs_mount_alloc (int ,struct vfsconf*,char*,int ) ;
 int vfs_op_exit (struct mount*) ;

__attribute__((used)) static int
vfs_mountroot_devfs(struct thread *td, struct mount **mpp)
{
 struct vfsoptlist *opts;
 struct vfsconf *vfsp;
 struct mount *mp;
 int error;

 *mpp = ((void*)0);

 if (rootdevmp != ((void*)0)) {



  error = vfs_busy(rootdevmp, 0);
  if (error != 0)
   return (error);
  *mpp = rootdevmp;
 } else {
  vfsp = vfs_byname("devfs");
  KASSERT(vfsp != ((void*)0), ("Could not find devfs by name"));
  if (vfsp == ((void*)0))
   return (ENOENT);

  mp = vfs_mount_alloc(NULLVP, vfsp, "/dev", td->td_ucred);

  error = VFS_MOUNT(mp);
  KASSERT(error == 0, ("VFS_MOUNT(devfs) failed %d", error));
  if (error)
   return (error);

  error = VFS_STATFS(mp, &mp->mnt_stat);
  KASSERT(error == 0, ("VFS_STATFS(devfs) failed %d", error));
  if (error)
   return (error);

  opts = malloc(sizeof(struct vfsoptlist), M_MOUNT, M_WAITOK);
  TAILQ_INIT(opts);
  mp->mnt_opt = opts;

  mtx_lock(&mountlist_mtx);
  TAILQ_INSERT_HEAD(&mountlist, mp, mnt_list);
  mtx_unlock(&mountlist_mtx);

  *mpp = mp;
  rootdevmp = mp;
  vfs_op_exit(mp);
 }

 set_rootvnode();

 error = kern_symlinkat(td, "/", AT_FDCWD, "dev", UIO_SYSSPACE);
 if (error)
  printf("kern_symlink /dev -> / returns %d\n", error);

 return (error);
}
