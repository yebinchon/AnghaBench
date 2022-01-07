
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int td_ucred; } ;
struct nameidata {int ni_vp; } ;
typedef int mode_t ;
typedef enum uio_seg { ____Placeholder_uio_seg } uio_seg ;


 int AT_BENEATH ;
 int AT_SYMLINK_NOFOLLOW ;
 int AUDITVNODE1 ;
 int AUDIT_ARG_MODE (int ) ;
 int BENEATH ;
 int FOLLOW ;
 int LOOKUP ;
 int NDFREE (struct nameidata*,int ) ;
 int NDF_ONLY_PNBUF ;
 int NDINIT_ATRIGHTS (struct nameidata*,int ,int,int,char const*,int,int *,struct thread*) ;
 int NOFOLLOW ;
 int cap_fchmod_rights ;
 int namei (struct nameidata*) ;
 int setfmode (struct thread*,int ,int ,int ) ;
 int vrele (int ) ;

int
kern_fchmodat(struct thread *td, int fd, const char *path,
    enum uio_seg pathseg, mode_t mode, int flag)
{
 struct nameidata nd;
 int error, follow;

 AUDIT_ARG_MODE(mode);
 follow = (flag & AT_SYMLINK_NOFOLLOW) != 0 ? NOFOLLOW : FOLLOW;
 follow |= (flag & AT_BENEATH) != 0 ? BENEATH : 0;
 NDINIT_ATRIGHTS(&nd, LOOKUP, follow | AUDITVNODE1, pathseg, path, fd,
     &cap_fchmod_rights, td);
 if ((error = namei(&nd)) != 0)
  return (error);
 NDFREE(&nd, NDF_ONLY_PNBUF);
 error = setfmode(td, td->td_ucred, nd.ni_vp, mode);
 vrele(nd.ni_vp);
 return (error);
}
