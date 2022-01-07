
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {int dummy; } ;
struct timespec {int dummy; } ;
struct thread {int dummy; } ;
struct nameidata {int ni_vp; } ;
typedef enum uio_seg { ____Placeholder_uio_seg } uio_seg ;


 int AUDITVNODE1 ;
 int FOLLOW ;
 int LOOKUP ;
 int NDFREE (struct nameidata*,int ) ;
 int NDF_ONLY_PNBUF ;
 int NDINIT_ATRIGHTS (struct nameidata*,int ,int,int,char const*,int,int *,struct thread*) ;
 int cap_futimes_rights ;
 int getutimes (struct timeval*,int,struct timespec*) ;
 int namei (struct nameidata*) ;
 int setutimes (struct thread*,int ,struct timespec*,int,int ) ;
 int vrele (int ) ;

int
kern_utimesat(struct thread *td, int fd, const char *path,
    enum uio_seg pathseg, struct timeval *tptr, enum uio_seg tptrseg)
{
 struct nameidata nd;
 struct timespec ts[2];
 int error;

 if ((error = getutimes(tptr, tptrseg, ts)) != 0)
  return (error);
 NDINIT_ATRIGHTS(&nd, LOOKUP, FOLLOW | AUDITVNODE1, pathseg, path, fd,
     &cap_futimes_rights, td);

 if ((error = namei(&nd)) != 0)
  return (error);
 NDFREE(&nd, NDF_ONLY_PNBUF);
 error = setutimes(td, nd.ni_vp, ts, 2, tptr == ((void*)0));
 vrele(nd.ni_vp);
 return (error);
}
