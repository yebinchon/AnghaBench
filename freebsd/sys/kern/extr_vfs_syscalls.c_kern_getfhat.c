
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct vnode {TYPE_2__* v_mount; } ;
struct thread {int dummy; } ;
struct nameidata {struct vnode* ni_vp; } ;
struct TYPE_10__ {int fh_fid; int fh_fsid; } ;
typedef TYPE_3__ fhandle_t ;
typedef int fh ;
typedef enum uio_seg { ____Placeholder_uio_seg } uio_seg ;
struct TYPE_8__ {int f_fsid; } ;
struct TYPE_9__ {TYPE_1__ mnt_stat; } ;


 int AT_BENEATH ;
 int AT_SYMLINK_NOFOLLOW ;
 int AUDITVNODE1 ;
 int BENEATH ;
 int FOLLOW ;
 int LOCKLEAF ;
 int LOOKUP ;
 int NDFREE (struct nameidata*,int ) ;
 int NDF_ONLY_PNBUF ;
 int NDINIT_AT (struct nameidata*,int ,int,int,char const*,int,struct thread*) ;
 int NOFOLLOW ;
 int PRIV_VFS_GETFH ;
 int VOP_VPTOFH (struct vnode*,int *) ;
 int bzero (TYPE_3__*,int) ;
 int copyout (TYPE_3__*,TYPE_3__*,int) ;
 int namei (struct nameidata*) ;
 int priv_check (struct thread*,int ) ;
 int vput (struct vnode*) ;

__attribute__((used)) static int
kern_getfhat(struct thread *td, int flags, int fd, const char *path,
    enum uio_seg pathseg, fhandle_t *fhp)
{
 struct nameidata nd;
 fhandle_t fh;
 struct vnode *vp;
 int error;

 error = priv_check(td, PRIV_VFS_GETFH);
 if (error != 0)
  return (error);
 NDINIT_AT(&nd, LOOKUP, ((flags & AT_SYMLINK_NOFOLLOW) != 0 ? NOFOLLOW :
     FOLLOW) | ((flags & AT_BENEATH) != 0 ? BENEATH : 0) | LOCKLEAF |
     AUDITVNODE1, pathseg, path, fd, td);
 error = namei(&nd);
 if (error != 0)
  return (error);
 NDFREE(&nd, NDF_ONLY_PNBUF);
 vp = nd.ni_vp;
 bzero(&fh, sizeof(fh));
 fh.fh_fsid = vp->v_mount->mnt_stat.f_fsid;
 error = VOP_VPTOFH(vp, &fh.fh_fid);
 vput(vp);
 if (error == 0)
  error = copyout(&fh, fhp, sizeof (fh));
 return (error);
}
