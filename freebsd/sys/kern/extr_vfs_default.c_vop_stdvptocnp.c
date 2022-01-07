
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vop_vptocnp_args {char* a_buf; int* a_buflen; struct ucred* a_cred; struct vnode** a_vpp; struct vnode* a_vp; } ;
struct vnode {scalar_t__ v_type; int v_vflag; TYPE_1__* v_mount; } ;
struct vattr {scalar_t__ va_fileid; int va_blocksize; } ;
struct ucred {int dummy; } ;
struct thread {int dummy; } ;
struct nameidata {struct vnode* ni_vp; } ;
struct dirent {scalar_t__ d_type; scalar_t__ d_fileno; char* d_name; int d_namlen; } ;
typedef scalar_t__ off_t ;
typedef scalar_t__ ino_t ;
struct TYPE_2__ {int mnt_flag; struct vnode* mnt_vnodecovered; } ;


 int DEV_BSIZE ;
 scalar_t__ DT_WHT ;
 int ENOENT ;
 int ENOMEM ;
 int FOLLOW ;
 int FREAD ;
 int LK_RETRY ;
 int LK_SHARED ;
 int LOCKLEAF ;
 int LOCKSHARED ;
 int LOOKUP ;
 int MNT_UNION ;
 int M_TEMP ;
 int M_WAITOK ;
 int NDFREE (struct nameidata*,int ) ;
 int NDF_ONLY_PNBUF ;
 int NDINIT_ATVP (struct nameidata*,int ,int,int ,char*,struct vnode*,struct thread*) ;
 int UIO_SYSSPACE ;
 scalar_t__ VDIR ;
 int VN_OPEN_NOAUDIT ;
 int VOP_GETATTR (struct vnode*,struct vattr*,struct ucred*) ;
 int VOP_ISLOCKED (struct vnode*) ;
 int VOP_UNLOCK (struct vnode*,int ) ;
 int VREF (struct vnode*) ;
 int VV_ROOT ;
 int bcopy (char*,char*,int) ;
 struct thread* curthread ;
 scalar_t__ dirent_exists (struct vnode*,char*,struct thread*) ;
 int free (char*,int ) ;
 int get_next_dirent (struct vnode*,struct dirent**,char*,int,scalar_t__*,char**,int*,int*,struct thread*) ;
 scalar_t__ malloc (int,int ,int ) ;
 int vn_close (struct vnode*,int,struct ucred*,struct thread*) ;
 int vn_lock (struct vnode*,int) ;
 int vn_open_cred (struct nameidata*,int*,int ,int ,struct ucred*,int *) ;
 int vput (struct vnode*) ;
 int vref (struct vnode*) ;
 int vrele (struct vnode*) ;

int
vop_stdvptocnp(struct vop_vptocnp_args *ap)
{
 struct vnode *vp = ap->a_vp;
 struct vnode **dvp = ap->a_vpp;
 struct ucred *cred = ap->a_cred;
 char *buf = ap->a_buf;
 int *buflen = ap->a_buflen;
 char *dirbuf, *cpos;
 int i, error, eofflag, dirbuflen, flags, locked, len, covered;
 off_t off;
 ino_t fileno;
 struct vattr va;
 struct nameidata nd;
 struct thread *td;
 struct dirent *dp;
 struct vnode *mvp;

 i = *buflen;
 error = 0;
 covered = 0;
 td = curthread;

 if (vp->v_type != VDIR)
  return (ENOENT);

 error = VOP_GETATTR(vp, &va, cred);
 if (error)
  return (error);

 VREF(vp);
 locked = VOP_ISLOCKED(vp);
 VOP_UNLOCK(vp, 0);
 NDINIT_ATVP(&nd, LOOKUP, FOLLOW | LOCKSHARED | LOCKLEAF, UIO_SYSSPACE,
     "..", vp, td);
 flags = FREAD;
 error = vn_open_cred(&nd, &flags, 0, VN_OPEN_NOAUDIT, cred, ((void*)0));
 if (error) {
  vn_lock(vp, locked | LK_RETRY);
  return (error);
 }
 NDFREE(&nd, NDF_ONLY_PNBUF);

 mvp = *dvp = nd.ni_vp;

 if (vp->v_mount != (*dvp)->v_mount &&
     ((*dvp)->v_vflag & VV_ROOT) &&
     ((*dvp)->v_mount->mnt_flag & MNT_UNION)) {
  *dvp = (*dvp)->v_mount->mnt_vnodecovered;
  VREF(mvp);
  VOP_UNLOCK(mvp, 0);
  vn_close(mvp, FREAD, cred, td);
  VREF(*dvp);
  vn_lock(*dvp, LK_SHARED | LK_RETRY);
  covered = 1;
 }

 fileno = va.va_fileid;

 dirbuflen = DEV_BSIZE;
 if (dirbuflen < va.va_blocksize)
  dirbuflen = va.va_blocksize;
 dirbuf = (char *)malloc(dirbuflen, M_TEMP, M_WAITOK);

 if ((*dvp)->v_type != VDIR) {
  error = ENOENT;
  goto out;
 }

 off = 0;
 len = 0;
 do {

  error = get_next_dirent(*dvp, &dp, dirbuf, dirbuflen, &off,
     &cpos, &len, &eofflag, td);
  if (error)
   goto out;

  if ((dp->d_type != DT_WHT) &&
      (dp->d_fileno == fileno)) {
   if (covered) {
    VOP_UNLOCK(*dvp, 0);
    vn_lock(mvp, LK_SHARED | LK_RETRY);
    if (dirent_exists(mvp, dp->d_name, td)) {
     error = ENOENT;
     VOP_UNLOCK(mvp, 0);
     vn_lock(*dvp, LK_SHARED | LK_RETRY);
     goto out;
    }
    VOP_UNLOCK(mvp, 0);
    vn_lock(*dvp, LK_SHARED | LK_RETRY);
   }
   i -= dp->d_namlen;

   if (i < 0) {
    error = ENOMEM;
    goto out;
   }
   if (dp->d_namlen == 1 && dp->d_name[0] == '.') {
    error = ENOENT;
   } else {
    bcopy(dp->d_name, buf + i, dp->d_namlen);
    error = 0;
   }
   goto out;
  }
 } while (len > 0 || !eofflag);
 error = ENOENT;

out:
 free(dirbuf, M_TEMP);
 if (!error) {
  *buflen = i;
  vref(*dvp);
 }
 if (covered) {
  vput(*dvp);
  vrele(mvp);
 } else {
  VOP_UNLOCK(mvp, 0);
  vn_close(mvp, FREAD, cred, td);
 }
 vn_lock(vp, locked | LK_RETRY);
 return (error);
}
