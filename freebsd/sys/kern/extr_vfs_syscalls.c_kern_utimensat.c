
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec {int dummy; } ;
struct thread {int dummy; } ;
struct nameidata {int ni_vp; } ;
typedef enum uio_seg { ____Placeholder_uio_seg } uio_seg ;


 int AT_BENEATH ;
 int AT_SYMLINK_NOFOLLOW ;
 int AUDITVNODE1 ;
 int BENEATH ;
 int EINVAL ;
 int FOLLOW ;
 int LOOKUP ;
 int NDFREE (struct nameidata*,int ) ;
 int NDF_ONLY_PNBUF ;
 int NDINIT_ATRIGHTS (struct nameidata*,int ,int,int,char const*,int,int *,struct thread*) ;
 int NOFOLLOW ;
 int UTIMENS_EXIT ;
 int UTIMENS_NULL ;
 int cap_futimes_rights ;
 int getutimens (struct timespec*,int,struct timespec*,int*) ;
 int namei (struct nameidata*) ;
 int setutimes (struct thread*,int ,struct timespec*,int,int) ;
 int vrele (int ) ;

int
kern_utimensat(struct thread *td, int fd, const char *path,
    enum uio_seg pathseg, struct timespec *tptr, enum uio_seg tptrseg,
    int flag)
{
 struct nameidata nd;
 struct timespec ts[2];
 int error, flags;

 if ((flag & ~(AT_SYMLINK_NOFOLLOW | AT_BENEATH)) != 0)
  return (EINVAL);

 if ((error = getutimens(tptr, tptrseg, ts, &flags)) != 0)
  return (error);
 NDINIT_ATRIGHTS(&nd, LOOKUP, ((flag & AT_SYMLINK_NOFOLLOW) ? NOFOLLOW :
     FOLLOW) | ((flag & AT_BENEATH) != 0 ? BENEATH : 0) | AUDITVNODE1,
     pathseg, path, fd, &cap_futimes_rights, td);
 if ((error = namei(&nd)) != 0)
  return (error);






 NDFREE(&nd, NDF_ONLY_PNBUF);
 if ((flags & UTIMENS_EXIT) == 0)
  error = setutimes(td, nd.ni_vp, ts, 2, flags & UTIMENS_NULL);
 vrele(nd.ni_vp);
 return (error);
}
