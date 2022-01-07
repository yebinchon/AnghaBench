
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec {int dummy; } ;
struct thread {int dummy; } ;
struct mqueue {int dummy; } ;
struct kmq_timedsend_args {int msg_prio; int msg_len; int msg_ptr; int * abs_timeout; int mqd; } ;
struct file {int f_flag; } ;
typedef int ets ;


 int AUDIT_ARG_FD (int ) ;
 int O_NONBLOCK ;
 int copyin (int *,struct timespec*,int) ;
 int fdrop (struct file*,struct thread*) ;
 int getmq_write (struct thread*,int ,struct file**,int *,struct mqueue**) ;
 int mqueue_send (struct mqueue*,int ,int ,int ,int,struct timespec*) ;

int
sys_kmq_timedsend(struct thread *td, struct kmq_timedsend_args *uap)
{
 struct mqueue *mq;
 struct file *fp;
 struct timespec *abs_timeout, ets;
 int error, waitok;

 AUDIT_ARG_FD(uap->mqd);
 error = getmq_write(td, uap->mqd, &fp, ((void*)0), &mq);
 if (error)
  return (error);
 if (uap->abs_timeout != ((void*)0)) {
  error = copyin(uap->abs_timeout, &ets, sizeof(ets));
  if (error != 0)
   goto out;
  abs_timeout = &ets;
 } else
  abs_timeout = ((void*)0);
 waitok = !(fp->f_flag & O_NONBLOCK);
 error = mqueue_send(mq, uap->msg_ptr, uap->msg_len,
  uap->msg_prio, waitok, abs_timeout);
out:
 fdrop(fp, td);
 return (error);
}
