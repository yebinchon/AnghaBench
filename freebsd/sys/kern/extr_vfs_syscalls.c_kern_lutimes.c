
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
 int LOOKUP ;
 int NDFREE (struct nameidata*,int ) ;
 int NDF_ONLY_PNBUF ;
 int NDINIT (struct nameidata*,int ,int,int,char const*,struct thread*) ;
 int NOFOLLOW ;
 int getutimes (struct timeval*,int,struct timespec*) ;
 int namei (struct nameidata*) ;
 int setutimes (struct thread*,int ,struct timespec*,int,int ) ;
 int vrele (int ) ;

int
kern_lutimes(struct thread *td, const char *path, enum uio_seg pathseg,
    struct timeval *tptr, enum uio_seg tptrseg)
{
 struct timespec ts[2];
 struct nameidata nd;
 int error;

 if ((error = getutimes(tptr, tptrseg, ts)) != 0)
  return (error);
 NDINIT(&nd, LOOKUP, NOFOLLOW | AUDITVNODE1, pathseg, path, td);
 if ((error = namei(&nd)) != 0)
  return (error);
 NDFREE(&nd, NDF_ONLY_PNBUF);
 error = setutimes(td, nd.ni_vp, ts, 2, tptr == ((void*)0));
 vrele(nd.ni_vp);
 return (error);
}
