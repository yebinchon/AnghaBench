
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct thread {int dummy; } ;
struct filecaps {int dummy; } ;
struct file {scalar_t__ f_type; int f_flag; } ;
typedef int cap_rights_t ;


 scalar_t__ DTYPE_SOCKET ;
 int ENOTSOCK ;
 int fdrop (struct file*,struct thread*) ;
 int fget_cap (struct thread*,int,int *,struct file**,struct filecaps*) ;
 int filecaps_free (struct filecaps*) ;

int
getsock_cap(struct thread *td, int fd, cap_rights_t *rightsp,
    struct file **fpp, u_int *fflagp, struct filecaps *havecapsp)
{
 struct file *fp;
 int error;

 error = fget_cap(td, fd, rightsp, &fp, havecapsp);
 if (error != 0)
  return (error);
 if (fp->f_type != DTYPE_SOCKET) {
  fdrop(fp, td);
  if (havecapsp != ((void*)0))
   filecaps_free(havecapsp);
  return (ENOTSOCK);
 }
 if (fflagp != ((void*)0))
  *fflagp = fp->f_flag;
 *fpp = fp;
 return (0);
}
