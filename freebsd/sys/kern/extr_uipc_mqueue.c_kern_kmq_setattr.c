
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct thread {int dummy; } ;
struct mqueue {int mq_curmsgs; int mq_msgsize; int mq_maxmsg; } ;
struct mq_attr {int mq_flags; int mq_curmsgs; int mq_msgsize; int mq_maxmsg; } ;
struct file {int f_flag; } ;


 int AUDIT_ARG_FD (int) ;
 int EINVAL ;
 int O_NONBLOCK ;
 scalar_t__ atomic_cmpset_int (int*,int,int) ;
 int fdrop (struct file*,struct thread*) ;
 int getmq (struct thread*,int,struct file**,int *,struct mqueue**) ;

__attribute__((used)) static int
kern_kmq_setattr(struct thread *td, int mqd, const struct mq_attr *attr,
    struct mq_attr *oattr)
{
 struct mqueue *mq;
 struct file *fp;
 u_int oflag, flag;
 int error;

 AUDIT_ARG_FD(mqd);
 if (attr != ((void*)0) && (attr->mq_flags & ~O_NONBLOCK) != 0)
  return (EINVAL);
 error = getmq(td, mqd, &fp, ((void*)0), &mq);
 if (error)
  return (error);
 oattr->mq_maxmsg = mq->mq_maxmsg;
 oattr->mq_msgsize = mq->mq_msgsize;
 oattr->mq_curmsgs = mq->mq_curmsgs;
 if (attr != ((void*)0)) {
  do {
   oflag = flag = fp->f_flag;
   flag &= ~O_NONBLOCK;
   flag |= (attr->mq_flags & O_NONBLOCK);
  } while (atomic_cmpset_int(&fp->f_flag, oflag, flag) == 0);
 } else
  oflag = fp->f_flag;
 oattr->mq_flags = (O_NONBLOCK & oflag);
 fdrop(fp, td);
 return (error);
}
