
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
struct thread {int dummy; } ;
struct nameidata {int ni_vp; } ;
typedef enum uio_seg { ____Placeholder_uio_seg } uio_seg ;


 int AT_BENEATH ;
 int AT_SYMLINK_NOFOLLOW ;
 int AUDITVNODE1 ;
 int AUDIT_ARG_FFLAGS (int ) ;
 int BENEATH ;
 int FOLLOW ;
 int LOOKUP ;
 int NDFREE (struct nameidata*,int ) ;
 int NDF_ONLY_PNBUF ;
 int NDINIT_ATRIGHTS (struct nameidata*,int ,int,int,char const*,int,int *,struct thread*) ;
 int NOFOLLOW ;
 int cap_fchflags_rights ;
 int namei (struct nameidata*) ;
 int setfflags (struct thread*,int ,int ) ;
 int vrele (int ) ;

__attribute__((used)) static int
kern_chflagsat(struct thread *td, int fd, const char *path,
    enum uio_seg pathseg, u_long flags, int atflag)
{
 struct nameidata nd;
 int error, follow;

 AUDIT_ARG_FFLAGS(flags);
 follow = (atflag & AT_SYMLINK_NOFOLLOW) ? NOFOLLOW : FOLLOW;
 follow |= (atflag & AT_BENEATH) != 0 ? BENEATH : 0;
 NDINIT_ATRIGHTS(&nd, LOOKUP, follow | AUDITVNODE1, pathseg, path, fd,
     &cap_fchflags_rights, td);
 if ((error = namei(&nd)) != 0)
  return (error);
 NDFREE(&nd, NDF_ONLY_PNBUF);
 error = setfflags(td, nd.ni_vp, flags);
 vrele(nd.ni_vp);
 return (error);
}
