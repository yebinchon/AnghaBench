
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int td_ucred; } ;
struct nameidata {int ni_vp; } ;
struct chroot_args {int path; } ;


 int AUDITVNODE1 ;
 int FOLLOW ;
 int LOCKLEAF ;
 int LOCKSHARED ;
 int LOOKUP ;
 int NDFREE (struct nameidata*,int ) ;
 int NDF_ONLY_PNBUF ;
 int NDINIT (struct nameidata*,int ,int,int ,int ,struct thread*) ;
 int PRIV_VFS_CHROOT ;
 int UIO_USERSPACE ;
 int VOP_UNLOCK (int ,int ) ;
 int change_dir (int ,struct thread*) ;
 int mac_vnode_check_chroot (int ,int ) ;
 int namei (struct nameidata*) ;
 int priv_check (struct thread*,int ) ;
 int pwd_chroot (struct thread*,int ) ;
 int vput (int ) ;
 int vrele (int ) ;

int
sys_chroot(struct thread *td, struct chroot_args *uap)
{
 struct nameidata nd;
 int error;

 error = priv_check(td, PRIV_VFS_CHROOT);
 if (error != 0)
  return (error);
 NDINIT(&nd, LOOKUP, FOLLOW | LOCKSHARED | LOCKLEAF | AUDITVNODE1,
     UIO_USERSPACE, uap->path, td);
 error = namei(&nd);
 if (error != 0)
  goto error;
 error = change_dir(nd.ni_vp, td);
 if (error != 0)
  goto e_vunlock;





 VOP_UNLOCK(nd.ni_vp, 0);
 error = pwd_chroot(td, nd.ni_vp);
 vrele(nd.ni_vp);
 NDFREE(&nd, NDF_ONLY_PNBUF);
 return (error);
e_vunlock:
 vput(nd.ni_vp);
error:
 NDFREE(&nd, NDF_ONLY_PNBUF);
 return (error);
}
