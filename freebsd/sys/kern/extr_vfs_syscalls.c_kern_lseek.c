
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct thread {int dummy; } ;
struct file {TYPE_1__* f_ops; } ;
typedef int off_t ;
struct TYPE_2__ {int fo_flags; } ;


 int AUDIT_ARG_FD (int) ;
 int DFLAG_SEEKABLE ;
 int ESPIPE ;
 int cap_seek_rights ;
 int fdrop (struct file*,struct thread*) ;
 int fget (struct thread*,int,int *,struct file**) ;
 int fo_seek (struct file*,int ,int,struct thread*) ;

int
kern_lseek(struct thread *td, int fd, off_t offset, int whence)
{
 struct file *fp;
 int error;

 AUDIT_ARG_FD(fd);
 error = fget(td, fd, &cap_seek_rights, &fp);
 if (error != 0)
  return (error);
 error = (fp->f_ops->fo_flags & DFLAG_SEEKABLE) != 0 ?
     fo_seek(fp, offset, whence, td) : ESPIPE;
 fdrop(fp, td);
 return (error);
}
