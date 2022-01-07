
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct filecaps {int dummy; } ;
struct file {int dummy; } ;


 int falloc_noinstall (struct thread*,struct file**) ;
 int fdrop (struct file*,struct thread*) ;
 int finstall (struct thread*,struct file*,int*,int,struct filecaps*) ;

int
falloc_caps(struct thread *td, struct file **resultfp, int *resultfd, int flags,
    struct filecaps *fcaps)
{
 struct file *fp;
 int error, fd;

 error = falloc_noinstall(td, &fp);
 if (error)
  return (error);

 error = finstall(td, fp, &fd, flags, fcaps);
 if (error) {
  fdrop(fp, td);
  return (error);
 }

 if (resultfp != ((void*)0))
  *resultfp = fp;
 else
  fdrop(fp, td);

 if (resultfd != ((void*)0))
  *resultfd = fd;

 return (0);
}
