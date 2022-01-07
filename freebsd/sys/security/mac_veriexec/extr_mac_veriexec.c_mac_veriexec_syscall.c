
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vattr {int va_mode; } ;
struct thread {int td_ucred; int td_proc; } ;
struct nameidata {int ni_vp; } ;
struct image_params {int vp; struct vattr* attr; int proc; } ;
struct file {int f_vnode; int f_type; } ;
typedef int img ;
typedef int cap_rights_t ;


 int AUDITVNODE1 ;
 int CAP_READ ;
 int DTYPE_VNODE ;
 int EINVAL ;
 int EOPNOTSUPP ;
 int FOLLOW ;
 int LK_EXCLUSIVE ;
 int LK_RETRY ;
 int LOCKLEAF ;
 int LOCKSHARED ;
 int LOOKUP ;


 int MAC_VERIEXEC_DBG (int,char*,int,...) ;
 int NDFREE (struct nameidata*,int ) ;
 int NDF_ONLY_PNBUF ;
 int NDINIT (struct nameidata*,int ,int,int ,void*,struct thread*) ;
 int S_IXGRP ;
 int S_IXOTH ;
 int S_IXUSR ;
 int UIO_USERSPACE ;
 int VOP_GETATTR (int ,struct vattr*,int ) ;
 int VOP_UNLOCK (int ,int ) ;
 int VVERIFY ;
 int bzero (struct image_params*,int) ;
 int cap_rights_init (int *,int ) ;
 int fdrop (struct file*,struct thread*) ;
 int getvnode (struct thread*,uintptr_t,int ,struct file**) ;
 int mac_veriexec_check_vp (int ,int ,int ) ;
 int mac_veriexec_fingerprint_check_image (struct image_params*,int,struct thread*) ;
 int namei (struct nameidata*) ;
 int vn_lock (int ,int) ;
 int vput (int ) ;

__attribute__((used)) static int
mac_veriexec_syscall(struct thread *td, int call, void *arg)
{
 struct image_params img;
 struct nameidata nd;
 cap_rights_t rights;
 struct vattr va;
 struct file *fp;
 int error;

 switch (call) {
 case 129:

  error = getvnode(td, (uintptr_t) arg, cap_rights_init(&rights,
      CAP_READ), &fp);
  if (error)
   return (error);
  if (fp->f_type != DTYPE_VNODE) {
   MAC_VERIEXEC_DBG(3, "MAC_VERIEXEC_CHECK_SYSCALL: "
       "file is not vnode type (type=0x%x)",
       fp->f_type);
   error = EINVAL;
   goto cleanup_file;
  }





  bzero(&img, sizeof(img));
  img.proc = td->td_proc;
  img.vp = fp->f_vnode;
  img.attr = &va;





  vn_lock(img.vp, LK_EXCLUSIVE | LK_RETRY);
  error = VOP_GETATTR(fp->f_vnode, &va, td->td_ucred);
  if (error)
   goto check_done;

  MAC_VERIEXEC_DBG(2, "mac_veriexec_fingerprint_check_image: "
      "va_mode=%o, check_files=%d\n", va.va_mode,
      ((va.va_mode & (S_IXUSR|S_IXGRP|S_IXOTH)) == 0));
  error = mac_veriexec_fingerprint_check_image(&img,
      ((va.va_mode & (S_IXUSR|S_IXGRP|S_IXOTH)) == 0), td);
check_done:

  VOP_UNLOCK(img.vp, 0);
cleanup_file:
  fdrop(fp, td);
  break;
 case 128:

  NDINIT(&nd, LOOKUP,
      FOLLOW | LOCKLEAF | LOCKSHARED | AUDITVNODE1,
      UIO_USERSPACE, arg, td);
  error = namei(&nd);
  if (error != 0)
   break;
  NDFREE(&nd, NDF_ONLY_PNBUF);


  error = mac_veriexec_check_vp(td->td_ucred, nd.ni_vp, VVERIFY);
  vput(nd.ni_vp);
  break;
 default:
  error = EOPNOTSUPP;
 }
 return (error);
}
