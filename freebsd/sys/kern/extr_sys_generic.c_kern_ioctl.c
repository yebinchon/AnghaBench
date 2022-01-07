
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_long ;
struct thread {int td_ucred; TYPE_1__* td_proc; } ;
struct filedesc {TYPE_2__* fd_ofiles; } ;
struct file {int f_flag; } ;
typedef void* caddr_t ;
struct TYPE_4__ {int fde_flags; } ;
struct TYPE_3__ {struct filedesc* p_fd; } ;


 int AUDIT_ARG_CMD (int) ;
 int AUDIT_ARG_FD (int) ;
 int EBADF ;
 int FASYNC ;
 int FILEDESC_SLOCK (struct filedesc*) ;
 int FILEDESC_SUNLOCK (struct filedesc*) ;
 int FILEDESC_UNLOCK_ASSERT (struct filedesc*) ;
 int FILEDESC_XLOCK (struct filedesc*) ;
 int FILEDESC_XUNLOCK (struct filedesc*) ;




 int FNONBLOCK ;
 int FREAD ;
 int FWRITE ;

 int LA_UNLOCKED ;

 int UF_EXCLOSE ;
 int atomic_clear_int (int*,int ) ;
 int atomic_set_int (int*,int ) ;
 int cap_ioctl_check (struct filedesc*,int,int) ;
 int cap_ioctl_rights ;
 int fdrop (struct file*,struct thread*) ;
 int fget (struct thread*,int,int *,struct file**) ;
 struct file* fget_locked (struct filedesc*,int) ;
 int fhold (struct file*) ;
 int fo_ioctl (struct file*,int,void*,int ,struct thread*) ;

int
kern_ioctl(struct thread *td, int fd, u_long com, caddr_t data)
{
 struct file *fp;
 struct filedesc *fdp;
 int error, tmp, locked;

 AUDIT_ARG_FD(fd);
 AUDIT_ARG_CMD(com);

 fdp = td->td_proc->p_fd;

 switch (com) {
 case 130:
 case 132:
  FILEDESC_XLOCK(fdp);
  locked = 128;
  break;
 default:




  locked = LA_UNLOCKED;

  break;
 }
 error = fget(td, fd, &cap_ioctl_rights, &fp);
 if (error != 0) {
  fp = ((void*)0);
  goto out;
 }

 if ((fp->f_flag & (FREAD | FWRITE)) == 0) {
  error = EBADF;
  goto out;
 }

 switch (com) {
 case 130:
  fdp->fd_ofiles[fd].fde_flags &= ~UF_EXCLOSE;
  goto out;
 case 132:
  fdp->fd_ofiles[fd].fde_flags |= UF_EXCLOSE;
  goto out;
 case 131:
  if ((tmp = *(int *)data))
   atomic_set_int(&fp->f_flag, FNONBLOCK);
  else
   atomic_clear_int(&fp->f_flag, FNONBLOCK);
  data = (void *)&tmp;
  break;
 case 133:
  if ((tmp = *(int *)data))
   atomic_set_int(&fp->f_flag, FASYNC);
  else
   atomic_clear_int(&fp->f_flag, FASYNC);
  data = (void *)&tmp;
  break;
 }

 error = fo_ioctl(fp, com, data, td->td_ucred, td);
out:
 switch (locked) {
 case 128:
  FILEDESC_XUNLOCK(fdp);
  break;





 default:
  FILEDESC_UNLOCK_ASSERT(fdp);
  break;
 }
 if (fp != ((void*)0))
  fdrop(fp, td);
 return (error);
}
