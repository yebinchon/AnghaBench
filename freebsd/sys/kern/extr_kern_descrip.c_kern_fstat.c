
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int td_ucred; int td_proc; } ;
struct stat {scalar_t__ st_btim_ext; scalar_t__ st_ctim_ext; scalar_t__ st_mtim_ext; scalar_t__ st_atim_ext; } ;
struct file {int dummy; } ;


 int AUDIT_ARG_FD (int) ;
 int AUDIT_ARG_FILE (int ,struct file*) ;
 scalar_t__ KTRPOINT (struct thread*,int ) ;
 int KTR_STRUCT ;
 int cap_fstat_rights ;
 int fdrop (struct file*,struct thread*) ;
 int fget (struct thread*,int,int *,struct file**) ;
 int fo_stat (struct file*,struct stat*,int ,struct thread*) ;
 int ktrstat (struct stat*) ;

int
kern_fstat(struct thread *td, int fd, struct stat *sbp)
{
 struct file *fp;
 int error;

 AUDIT_ARG_FD(fd);

 error = fget(td, fd, &cap_fstat_rights, &fp);
 if (error != 0)
  return (error);

 AUDIT_ARG_FILE(td->td_proc, fp);

 error = fo_stat(fp, sbp, td->td_ucred, td);
 fdrop(fp, td);
 return (error);
}
