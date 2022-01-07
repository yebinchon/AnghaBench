
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vop_getattr_args {int a_cred; struct vattr* a_vap; struct vnode* a_vp; } ;
struct vnode {scalar_t__ v_type; struct mount* v_mount; struct autofs_node* v_data; } ;
struct vattr {int va_mode; int va_nlink; scalar_t__ va_spare; scalar_t__ va_filerev; void* va_bytes; scalar_t__ va_rdev; scalar_t__ va_flags; scalar_t__ va_gen; int va_birthtime; int va_ctime; int va_atime; int va_mtime; void* va_blocksize; void* va_size; int va_fileid; int va_fsid; scalar_t__ va_gid; scalar_t__ va_uid; scalar_t__ va_type; } ;
struct TYPE_3__ {int * val; } ;
struct TYPE_4__ {TYPE_1__ f_fsid; } ;
struct mount {TYPE_2__ mnt_stat; } ;
struct autofs_node {int an_ctime; int an_fileno; } ;


 int KASSERT (int,char*) ;
 scalar_t__ NODEV ;
 void* S_BLKSIZE ;
 scalar_t__ VDIR ;
 int VOP_GETATTR (struct vnode*,struct vattr*,int ) ;
 int autofs_cached (struct autofs_node*,int *,int ) ;
 int autofs_ignore_thread (int ) ;
 scalar_t__ autofs_mount_on_stat ;
 int autofs_trigger_vn (struct vnode*,char*,int ,struct vnode**) ;
 int curthread ;
 int vput (struct vnode*) ;

__attribute__((used)) static int
autofs_getattr(struct vop_getattr_args *ap)
{
 struct vnode *vp, *newvp;
 struct autofs_node *anp;
 struct mount *mp;
 struct vattr *vap;
 int error;

 vp = ap->a_vp;
 anp = vp->v_data;
 mp = vp->v_mount;
 vap = ap->a_vap;

 KASSERT(ap->a_vp->v_type == VDIR, ("!VDIR"));







 if (autofs_mount_on_stat && autofs_cached(anp, ((void*)0), 0) == 0 &&
     autofs_ignore_thread(curthread) == 0) {
  error = autofs_trigger_vn(vp, "", 0, &newvp);
  if (error != 0)
   return (error);

  if (newvp != ((void*)0)) {
   error = VOP_GETATTR(newvp, ap->a_vap,
       ap->a_cred);
   vput(newvp);
   return (error);
  }
 }

 vap->va_type = VDIR;
 vap->va_mode = 0755;
 vap->va_nlink = 3;
 vap->va_uid = 0;
 vap->va_gid = 0;
 vap->va_rdev = NODEV;
 vap->va_fsid = mp->mnt_stat.f_fsid.val[0];
 vap->va_fileid = anp->an_fileno;
 vap->va_size = S_BLKSIZE;
 vap->va_blocksize = S_BLKSIZE;
 vap->va_mtime = anp->an_ctime;
 vap->va_atime = anp->an_ctime;
 vap->va_ctime = anp->an_ctime;
 vap->va_birthtime = anp->an_ctime;
 vap->va_gen = 0;
 vap->va_flags = 0;
 vap->va_rdev = 0;
 vap->va_bytes = S_BLKSIZE;
 vap->va_filerev = 0;
 vap->va_spare = 0;

 return (0);
}
