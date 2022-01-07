
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct nameidata {int ni_vp; } ;
typedef enum uio_seg { ____Placeholder_uio_seg } uio_seg ;


 int AUDITVNODE1 ;
 int EAGAIN ;
 int LOOKUP ;
 int NDFREE (struct nameidata*,int ) ;
 int NDF_ONLY_PNBUF ;
 int NDINIT_ATRIGHTS (struct nameidata*,int ,int,int,char const*,int,int *,struct thread*) ;
 int bwillwrite () ;
 int cap_linkat_source_rights ;
 int kern_linkat_vp (struct thread*,int ,int,char const*,int) ;
 int namei (struct nameidata*) ;

int
kern_linkat(struct thread *td, int fd1, int fd2, const char *path1,
    const char *path2, enum uio_seg segflag, int follow)
{
 struct nameidata nd;
 int error;

 do {
  bwillwrite();
  NDINIT_ATRIGHTS(&nd, LOOKUP, follow | AUDITVNODE1, segflag,
      path1, fd1, &cap_linkat_source_rights, td);
  if ((error = namei(&nd)) != 0)
   return (error);
  NDFREE(&nd, NDF_ONLY_PNBUF);
  error = kern_linkat_vp(td, nd.ni_vp, fd2, path2, segflag);
 } while (error == EAGAIN);
 return (error);
}
