
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mount {int mnt_flag; int mnt_kern_flag; struct autofs_mount* mnt_data; int mnt_optnew; } ;
struct autofs_mount {int am_last_fileno; int am_root; int am_lock; int am_prefix; int am_options; int am_mountpoint; int am_from; struct mount* am_mp; } ;


 int AUTOFS_XLOCK (struct autofs_mount*) ;
 int AUTOFS_XUNLOCK (struct autofs_mount*) ;
 int EINVAL ;
 int MNTK_LOOKUP_SHARED ;
 int MNT_ILOCK (struct mount*) ;
 int MNT_IUNLOCK (struct mount*) ;
 int MNT_UPDATE ;
 int M_AUTOFS ;
 int M_WAITOK ;
 int M_ZERO ;
 int VFSTOAUTOFS (struct mount*) ;
 int autofs_flush (int ) ;
 int autofs_node_new (int *,struct autofs_mount*,char*,int,int *) ;
 int autofs_opts ;
 int free (struct autofs_mount*,int ) ;
 struct autofs_mount* malloc (int,int ,int) ;
 int strlcpy (int ,char*,int) ;
 int sx_init (int *,char*) ;
 scalar_t__ vfs_filteropt (int ,int ) ;
 int vfs_getnewfsid (struct mount*) ;
 scalar_t__ vfs_getopt (int ,char*,void**,int *) ;
 int vfs_mountedfrom (struct mount*,char*) ;

__attribute__((used)) static int
autofs_mount(struct mount *mp)
{
 struct autofs_mount *amp;
 char *from, *fspath, *options, *prefix;
 int error;

 if (vfs_filteropt(mp->mnt_optnew, autofs_opts))
  return (EINVAL);

 if (mp->mnt_flag & MNT_UPDATE) {
  autofs_flush(VFSTOAUTOFS(mp));
  return (0);
 }

 if (vfs_getopt(mp->mnt_optnew, "from", (void **)&from, ((void*)0)))
  return (EINVAL);

 if (vfs_getopt(mp->mnt_optnew, "fspath", (void **)&fspath, ((void*)0)))
  return (EINVAL);

 if (vfs_getopt(mp->mnt_optnew, "master_options", (void **)&options, ((void*)0)))
  return (EINVAL);

 if (vfs_getopt(mp->mnt_optnew, "master_prefix", (void **)&prefix, ((void*)0)))
  return (EINVAL);

 amp = malloc(sizeof(*amp), M_AUTOFS, M_WAITOK | M_ZERO);
 mp->mnt_data = amp;
 amp->am_mp = mp;
 strlcpy(amp->am_from, from, sizeof(amp->am_from));
 strlcpy(amp->am_mountpoint, fspath, sizeof(amp->am_mountpoint));
 strlcpy(amp->am_options, options, sizeof(amp->am_options));
 strlcpy(amp->am_prefix, prefix, sizeof(amp->am_prefix));
 sx_init(&amp->am_lock, "autofslk");
 amp->am_last_fileno = 1;

 vfs_getnewfsid(mp);

 MNT_ILOCK(mp);
 mp->mnt_kern_flag |= MNTK_LOOKUP_SHARED;
 MNT_IUNLOCK(mp);

 AUTOFS_XLOCK(amp);
 error = autofs_node_new(((void*)0), amp, ".", -1, &amp->am_root);
 if (error != 0) {
  AUTOFS_XUNLOCK(amp);
  free(amp, M_AUTOFS);
  return (error);
 }
 AUTOFS_XUNLOCK(amp);

 vfs_mountedfrom(mp, from);

 return (0);
}
