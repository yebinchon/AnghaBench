
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {int dummy; } ;
struct timespec {int tv_nsec; scalar_t__ tv_sec; } ;
struct mqueue_msg {int dummy; } ;
struct mqueue {size_t mq_msgsize; } ;


 int EAGAIN ;
 int EFAULT ;
 int EINVAL ;
 int EMSGSIZE ;
 int ETIMEDOUT ;
 unsigned int MQ_PRIO_MAX ;
 int TIMESPEC_TO_TIMEVAL (struct timeval*,struct timespec*) ;
 int _mqueue_send (struct mqueue*,struct mqueue_msg*,int) ;
 int getnanotime (struct timespec*) ;
 int mqueue_freemsg (struct mqueue_msg*) ;
 struct mqueue_msg* mqueue_loadmsg (char const*,size_t,unsigned int) ;
 int timespecsub (struct timespec const*,struct timespec*,struct timespec*) ;
 int tvtohz (struct timeval*) ;

int
mqueue_send(struct mqueue *mq, const char *msg_ptr,
 size_t msg_len, unsigned msg_prio, int waitok,
 const struct timespec *abs_timeout)
{
 struct mqueue_msg *msg;
 struct timespec ts, ts2;
 struct timeval tv;
 int error;

 if (msg_prio >= MQ_PRIO_MAX)
  return (EINVAL);
 if (msg_len > mq->mq_msgsize)
  return (EMSGSIZE);
 msg = mqueue_loadmsg(msg_ptr, msg_len, msg_prio);
 if (msg == ((void*)0))
  return (EFAULT);


 if (!waitok) {
  error = _mqueue_send(mq, msg, -1);
  if (error)
   goto bad;
  return (0);
 }


 if (abs_timeout == ((void*)0)) {
  error = _mqueue_send(mq, msg, 0);
  if (error)
   goto bad;
  return (0);
 }


 error = _mqueue_send(mq, msg, -1);
 if (error == 0)
  return (0);

 if (error != EAGAIN)
  goto bad;

 if (abs_timeout->tv_nsec >= 1000000000 || abs_timeout->tv_nsec < 0) {
  error = EINVAL;
  goto bad;
 }
 for (;;) {
  getnanotime(&ts);
  timespecsub(abs_timeout, &ts, &ts2);
  if (ts2.tv_sec < 0 || (ts2.tv_sec == 0 && ts2.tv_nsec <= 0)) {
   error = ETIMEDOUT;
   break;
  }
  TIMESPEC_TO_TIMEVAL(&tv, &ts2);
  error = _mqueue_send(mq, msg, tvtohz(&tv));
  if (error != ETIMEDOUT)
   break;
 }
 if (error == 0)
  return (0);
bad:
 mqueue_freemsg(msg);
 return (error);
}
