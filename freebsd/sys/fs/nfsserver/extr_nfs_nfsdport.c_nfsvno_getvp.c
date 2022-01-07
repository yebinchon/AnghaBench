
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct vnode {int dummy; } ;
struct mount {int dummy; } ;
struct TYPE_3__ {int fh_fid; int fh_fsid; } ;
typedef TYPE_1__ fhandle_t ;


 int LK_EXCLUSIVE ;
 int VFS_FHTOVP (struct mount*,int *,int ,struct vnode**) ;
 struct mount* vfs_busyfs (int *) ;
 int vfs_unbusy (struct mount*) ;

struct vnode *
nfsvno_getvp(fhandle_t *fhp)
{
 struct mount *mp;
 struct vnode *vp;
 int error;

 mp = vfs_busyfs(&fhp->fh_fsid);
 if (mp == ((void*)0))
  return (((void*)0));
 error = VFS_FHTOVP(mp, &fhp->fh_fid, LK_EXCLUSIVE, &vp);
 vfs_unbusy(mp);
 if (error)
  return (((void*)0));
 return (vp);
}
