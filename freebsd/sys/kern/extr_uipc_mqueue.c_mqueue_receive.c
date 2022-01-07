
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct timeval {int dummy; } ;
struct timespec {int tv_nsec; scalar_t__ tv_sec; } ;
struct mqueue_msg {scalar_t__ msg_size; } ;
struct mqueue {size_t mq_msgsize; } ;
struct TYPE_2__ {scalar_t__* td_retval; } ;


 int EAGAIN ;
 int EINVAL ;
 int EMSGSIZE ;
 int ETIMEDOUT ;
 int TIMESPEC_TO_TIMEVAL (struct timeval*,struct timespec*) ;
 int _mqueue_recv (struct mqueue*,struct mqueue_msg**,int) ;
 TYPE_1__* curthread ;
 int getnanotime (struct timespec*) ;
 int mqueue_freemsg (struct mqueue_msg*) ;
 int mqueue_savemsg (struct mqueue_msg*,char*,unsigned int*) ;
 int timespecsub (struct timespec const*,struct timespec*,struct timespec*) ;
 int tvtohz (struct timeval*) ;

int
mqueue_receive(struct mqueue *mq, char *msg_ptr,
 size_t msg_len, unsigned *msg_prio, int waitok,
 const struct timespec *abs_timeout)
{
 struct mqueue_msg *msg;
 struct timespec ts, ts2;
 struct timeval tv;
 int error;

 if (msg_len < mq->mq_msgsize)
  return (EMSGSIZE);


 if (!waitok) {
  error = _mqueue_recv(mq, &msg, -1);
  if (error)
   return (error);
  goto received;
 }


 if (abs_timeout == ((void*)0)) {
  error = _mqueue_recv(mq, &msg, 0);
  if (error)
   return (error);
  goto received;
 }


 error = _mqueue_recv(mq, &msg, -1);
 if (error == 0)
  goto received;

 if (error != EAGAIN)
  return (error);

 if (abs_timeout->tv_nsec >= 1000000000 || abs_timeout->tv_nsec < 0) {
  error = EINVAL;
  return (error);
 }

 for (;;) {
  getnanotime(&ts);
  timespecsub(abs_timeout, &ts, &ts2);
  if (ts2.tv_sec < 0 || (ts2.tv_sec == 0 && ts2.tv_nsec <= 0)) {
   error = ETIMEDOUT;
   return (error);
  }
  TIMESPEC_TO_TIMEVAL(&tv, &ts2);
  error = _mqueue_recv(mq, &msg, tvtohz(&tv));
  if (error == 0)
   break;
  if (error != ETIMEDOUT)
   return (error);
 }

received:
 error = mqueue_savemsg(msg, msg_ptr, msg_prio);
 if (error == 0) {
  curthread->td_retval[0] = msg->msg_size;
  curthread->td_retval[1] = 0;
 }
 mqueue_freemsg(msg);
 return (error);
}
