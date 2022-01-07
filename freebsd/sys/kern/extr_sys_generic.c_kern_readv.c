
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uio {int dummy; } ;
struct thread {int dummy; } ;
struct file {int dummy; } ;
typedef int off_t ;


 int cap_read_rights ;
 int dofileread (struct thread*,int,struct file*,struct uio*,int ,int ) ;
 int fdrop (struct file*,struct thread*) ;
 int fget_read (struct thread*,int,int *,struct file**) ;

int
kern_readv(struct thread *td, int fd, struct uio *auio)
{
 struct file *fp;
 int error;

 error = fget_read(td, fd, &cap_read_rights, &fp);
 if (error)
  return (error);
 error = dofileread(td, fd, fp, auio, (off_t)-1, 0);
 fdrop(fp, td);
 return (error);
}
